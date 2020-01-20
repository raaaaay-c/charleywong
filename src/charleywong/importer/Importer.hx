package charleywong.importer;

import haxe.Json;
import sys.io.File;
import haxe.ds.ReadOnlyArray;
import haxe.macro.Expr;
import charleywong.importer.FacebookImporter;
using StringTools;
using Lambda;

class Importer {
    static final fbAppId = Sys.getEnv("FB_APP_ID");

    static function importFbPermalink(url:String) {
        var importer = new FacebookImporter();
        var fbPage = importer.fbPage(url);
        importer.destroy();
        importFbPage(fbPage, url);
    }

    static function importFbPage(fbPage:String, postUrl:String) {
        var cls = switch (EntityIndex.entitiesOfFbPage[fbPage]) {
            case null:
                var importer = new FacebookImporter();
                var info = importer.fbPageInfo(fbPage);
                importer.destroy();
                Sys.println(Json.stringify(info, null, "  "));
                createEntity(info.name, info, postUrl);
            case entity:
                updateEntity(entity, postUrl);
        }
        var fileContent = new haxe.macro.Printer("    ").printTypeDefinition(cls);
        var formatterProcess = new sys.io.Process("haxelib", ["run", "formatter", "--stdin", "-s", "src"]);
        formatterProcess.stdin.writeString(fileContent);
        formatterProcess.stdin.close();
        fileContent = formatterProcess.stdout.readAll().toString();
        formatterProcess.close();
        Sys.println("");
        Sys.print(fileContent);
        if (Sys.getEnv("CI") != null || Sys.getEnv("GITHUB_ACTIONS") != null) {
            Sys.println("In CI, skip writing file.");
        } else {
            var file = "src/charleywong/entities/" + cls.name + ".hx";
            var rewrite = sys.FileSystem.exists(file);
            File.saveContent(file, fileContent);
            Sys.println((rewrite ? "Rewritten " : "Created ") + file);
        }
    }

    static function importUrl(url:String):Void {
        if (!url.startsWith("https://www.facebook.com/")) {
            throw '$url doesn\'t look like a Facebook URL.';
        }

        // https://www.facebook.com/permalink.php?story_fbid=1384711015018289&id=897763637046365&__xts__%5B0%5D=68.ARDoat1gIoDWNhWOYOl4y2ph9GCqrYoWLE4bfOiLDxX9nOIYWW4IpujBgs52jBUlU_uzyAXHdsYldWW0tJvlRn-2_LXjLeAhbBIPxQLD1OXEoFFu1cmGbGm2XcVKvSI5yxeyLT-36li2qYQEPITHxhEMvwQAXYtySy_ErDCAPRi32K6H8iRp7pfc_pxc2S9AOb9IhlWwizb3o7_IunO6z-q22DorIPRXBBt2-R3Cpg4cz_yfM3-4uaGu2lPozkQXzcEwkCr84sUkl8gEVFaOYS8P51Xqo0jsH4gOHxwJP5c7hkyqxNvUmQhCjzFoticWkZ_p5laKOD5p0kh1bH3JgyMS7A&__tn__=-R
        var permalinkRegexp = ~/^https:\/\/www\.facebook\.com\/permalink\.php.+$/;
        if (permalinkRegexp.match(url)) {
            var url = switch (url.indexOf("&__xts__")) {
                case -1:
                    url;
                case qIndex:
                    url.substring(0, qIndex);
            };
            importFbPermalink(url);
            return;
        }

        var postRegexp = ~/^https:\/\/www\.facebook\.com\/(.+?)\/(?:posts|photos|videos)\/.+$/;
        if (postRegexp.match(url)) {
            var fbPage = postRegexp.matched(1);
            var url = switch (url.indexOf("?")) {
                case -1:
                    url;
                case qIndex:
                    url.substring(0, qIndex);
            };
            importFbPage(fbPage, url);
            return;
        }

        throw 'Cannot handle $url';
    }

    static function processSearchResults(jsonFile:String):Void {
        var json:Array<{
            title:String,
            link:String,
            snippet:String,
        }> = Json.parse(File.getContent(jsonFile));
        // trace(json);

    }

    static function main() {
        var args = Sys.args();

        var arg = args[0].trim();
        if (arg.startsWith("https://")) {
            importUrl(arg);
            return;
        }
    }

    static function uppercaseFirstChar(str:String):String {
        return str.charAt(0).toUpperCase() + str.substr(1);
    }

    static function removeNonEngChar(str:String):String {
        return ~/[^A-Za-z0-9]/g.replace(str, "");
    }

    static function toTitleCase(str) {
        return uppercaseFirstChar(removeNonEngChar(str));
    }

    static function getClassName(name:String, fbPage:String):String {
        if (~/^[^\u4e00-\u9fff]+$/.match(name)) {
            return toTitleCase(name);
        }

        if (~/^[^\u4e00-\u9fff]+$/.match(fbPage)) {
            return toTitleCase(fbPage);
        }

        return toTitleCase(name);

        throw 'Cannot get a class name from $name ($fbPage).';
    }

    static function valueToExpr(v:Dynamic):Expr {
        return switch (Type.typeof(v)) {
            case TNull: macro null;
            case TInt: {
                expr: EConst(CInt(Std.string(v))),
                pos: null
            }
            case TFloat: {
                expr: EConst(CFloat(Std.string(v))),
                pos: null
            }
            case TBool: {
                expr: EConst(CIdent(v ? "true" : "false")),
                pos: null
            }
            case TClass(String): {
                expr: EConst(CString(v)),
                pos: null
            }
            case TClass(Array):
                var a:Array<Dynamic> = v;
                var items = a.map(valueToExpr);
                macro [$a{items}];
            case type:
                throw 'Cannot handle $type.';
        }
    }

    static function updateEntity(entity:Entity, post:String) {
        var fullName = Type.getClassName(Type.getClass(entity)).split(".");
        var className = fullName[fullName.length - 1];
        var idExpr = {
            expr: EConst(CString(entity.id)),
            pos: null,
        };
        var nameExprs = [
            for (lang => name in entity.name)
            {
                var nameExpr = {
                    expr: EConst(CString(name)),
                    pos: null,
                };
                macro $i{lang} => ${nameExpr};
            }
        ];
        var webpagesExprs = [
            for (p in entity.webpages)
            {
                var fields = [];
                var urlExpr = {
                    expr: EConst(CString(p.url)),
                    pos: null,
                };
                switch (macro { url: $urlExpr }) {
                    case { expr: EObjectDecl(fs) }: fields = fields.concat(fs);
                    case e: throw '$e is not EObjectDecl.';
                }
                if (p.meta != null) {
                    var metas = [for (k => v in p.meta) macro ${{expr:EConst(CString(k)), pos:null}} => ${valueToExpr(v)}];
                    var metaExpr = macro [$a{metas}];
                    switch (macro { meta: $metaExpr }) {
                        case { expr: EObjectDecl(fs) }: fields = fields.concat(fs);
                        case e: throw '$e is not EObjectDecl.';
                    }
                }
                {
                    expr: EObjectDecl(fields),
                    pos: null,
                };
            }
        ];
        var posts = post == null || entity.posts.exists(p -> p.url == post) ? entity.posts : entity.posts.concat([{ url: post }]);
        var postsExprs = [
            for (p in posts)
            {
                var urlExpr = {
                    expr: EConst(CString(p.url)),
                    pos: null,
                };
                macro { url: $urlExpr };
            }
        ];
        var cls = macro class $className implements Entity {
            public final id = ${idExpr};
            public final name = $a{nameExprs};
            public final webpages:Array<WebPage> = $a{webpagesExprs};
            public final posts:Array<Post> = $a{postsExprs};
        };
        cls.pack = fullName.slice(0, fullName.length - 1);
        return cls;
    }


    static final noChi = ~/^[^\u4e00-\u9fff]+$/; // no chinese characters
    static final allChi = ~/^[\u4e00-\u9fff \-_\.·]+$/; // all chinese characters

    static function createEntity(name:String, fbPage:FacebookInfo, post:String) {
        var className = getClassName(name, fbPage.page);
        var nameExpr = {
            var chi_en = ~/^([\u4e00-\u9fff ]*[\u4e00-\u9fff])[^A-Za-z0-9\u4e00-\u9fff]*(.+)$/; // chinese then eng
            var en_chi = ~/^([^\u4e00-\u9fff]+?)[ \-]*([\u4e00-\u9fff]+)$/; // chinese then eng
            if (noChi.match(name))
                macro [
                    en => ${{
                        expr: EConst(CString(name)),
                        pos: null,
                    }}
                ]
            else if (allChi.match(name))
                macro [
                    zh => ${{
                        expr: EConst(CString(name)),
                        pos: null,
                    }}
                ]
            else if (chi_en.match(name))
                macro [
                    zh => ${{
                        expr: EConst(CString(chi_en.matched(1))),
                        pos: null,
                    }},
                    en => ${{
                        expr: EConst(CString(chi_en.matched(2))),
                        pos: null,
                    }},
                ]
            else if (en_chi.match(name))
                macro [
                    en => ${{
                        expr: EConst(CString(en_chi.matched(1))),
                        pos: null,
                    }},
                    zh => ${{
                        expr: EConst(CString(en_chi.matched(2))),
                        pos: null,
                    }},
                ]
            else
                macro [
                    zh => ${{
                        expr: EConst(CString(name)),
                        pos: null,
                    }}
                ];
        };
        var idExpr = {
            expr: EConst(CString(fbPage.page)),
            pos: null,
        };
        var postExpr = {
            expr: EConst(CString(post)),
            pos: null,
        };
        var metaExprs = [];
        if (fbPage.about != null) {
            metaExprs.push(macro "about" => ${valueToExpr(fbPage.about)});
        }
        metaExprs.push(macro "categories" => ${valueToExpr(fbPage.categories)});
        if (fbPage.addr != null) {
            metaExprs.push(macro "addr" => ${valueToExpr(fbPage.addr.line)});
            metaExprs.push(macro "area" => ${valueToExpr(fbPage.addr.area)});
        }
        if (fbPage.email != null) {
            metaExprs.push(macro "email" => ${valueToExpr(fbPage.email)});
        }
        if (fbPage.tel != null) {
            metaExprs.push(macro "tel" => ${valueToExpr(fbPage.tel)});
        }
        var webpagesExprs = [];
        if (fbPage.website != null) {
            webpagesExprs.push(macro {
                url: ${valueToExpr(fbPage.website)},
            });
        }
        webpagesExprs.push(macro {
            url: ${valueToExpr('https://www.facebook.com/${fbPage.page}/')},
            meta: [$a{metaExprs}],
        });
        if (fbPage.ig != null) {
            webpagesExprs.push(macro {
                url: ${valueToExpr('https://www.instagram.com/${fbPage.ig}/')},
            });
        }
        var cls = macro class $className implements Entity {
            public final id =${idExpr};
            public final name = ${nameExpr};
            public final webpages:Array<WebPage> = [$a{webpagesExprs}];
            public final posts:Array<Post> = [{
                url: ${postExpr}
            }];
        };
        cls.pack = ["charleywong", "entities"];
        return cls;
    }
}