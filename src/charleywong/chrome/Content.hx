package charleywong.chrome;

import charleywong.EntityIndex;
import js.html.AnchorElement;
import js.npm.mutation_summary.MutationSummary;
import js.Browser.*;
using StringTools;

class Content {
    static function processLink(link:AnchorElement):Void {
        if (link.dataset.charleywong != null) {
            return;
        }

        link.dataset.charleywong = "done";

        if (
            link.getAttribute("role") != "button"
            &&
            !link.matches("*[role='navigation'] a")
            &&
            !(switch (link.getAttribute("href")) {
                case null: false;
                case href: href.startsWith("#");
            })
            &&
            (
                link.children.length == 0 || link.querySelector("h3") != null || link.querySelector("img") == null
            )
        ) {

            var fbRegexp = ~/^https?:\/\/(?:www.)?facebook.com\/([^\/]+)/;
            var homePathRegexp = ~/^\/([^\/]+)\/?$/;
            var postPathRegexp = ~/^\/([^\/]+)\/(?:posts|photos|videos)\/?/;
            if (fbRegexp.match(link.href) && (homePathRegexp.match(link.pathname) || postPathRegexp.match(link.pathname))) {
                var fb = fbRegexp.matched(1);
                var fbIdRegexp = ~/^.+-([0-9]+)$/;
                if (fbIdRegexp.match(fb))
                    fb = fbIdRegexp.matched(1);
                switch (EntityIndex.entitiesOfFbPage[fb]) {
                    case null: //pass
                    case entity:
                        switch (window.getComputedStyle(link).display) {
                            case "block": link.style.display = "inline-block";
                            case _: //pass
                        }
                        link.outerHTML = "<span>" + link.outerHTML + ' <a href="https://charleywong.giffon.io/${entity.id}" target="_blank">[🔎]</a></span>';
                }
            }

        }
    }

    static final observer = new MutationSummary({
        queries: [{
            element: "a",
            elementAttributes: "href",
        }],
        callback: function(results:Array<ElementQueryResult>) {
            var result = results[0];
            for (a in result.added.concat(result.attributeChanged.href)) {
                processLink(cast a);
            }
        }
    });

    static function main() {
        for (a in document.querySelectorAll("a[href]")) {
            processLink(cast a);
        }
    }
}