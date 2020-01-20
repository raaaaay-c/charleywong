package charleywong.entities;

class Giffon implements Entity {
    public final id = "giffon.io";
    public final name = [
        en => "Giffon"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/giffon.io/",
            meta: [
                "about" =>
                "A crowd-gifting platform where you can state what you want and let your friends collectively buy it as a gift for you.\n\n任何人都可以上嚟許願, 等朋友夾份買禮物送俾你嘅禮物眾籌平台.",
                "categories" => [
                    "App Page",
                    "Website"
                ],
                "email" => "admin@giffon.io"
            ]
        },
        {
            url: "https://www.instagram.com/giffonio/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/pg/giffon.io/photos/?tab=album&album_id=459245671447359"
        }
    ];
}
