package charleywong.entities;

class Yanniesoap implements Entity {
    public final id = "yanniesoap";
    public final name = [
        en => "Yannie Soap",
        zh => "嬰兒皂"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.yanniesoap.com"
        },
        {
            url: "https://www.facebook.com/yanniesoap/",
            meta: [
                "id" => "1064996593520233",
                "about" => "多以草本植物或天然礦物粉製作冷製皂，希望我製作的皂除了有植物油脂本身的獨有功效外，還增添草本植物各種舒緩特性，大家可以享受沐浴時光",
                "categories" => [
                    "Skincare service",
                    "Baby goods/children\'s goods",
                    "Product/service"
                ],
                "addr" => "香港工業中心C座12樓1210B室",
                "area" => "Lai Chi Kok",
                "email" => "handmake.yannie@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yanniesoap/photos/a.1071147182905174/2979692915383915/"
        },
        {
            url: "https://www.facebook.com/yanniesoap/posts/2840793969273811"
        }
    ];
    public final tags:Array<Tag> = [];
}
