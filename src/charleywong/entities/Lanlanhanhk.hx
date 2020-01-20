package charleywong.entities;

class Lanlanhanhk implements Entity {
    public final id = "lanlanhanhk";
    public final name = [
        zh => "懶懶閒"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lanlanhanhk/",
            meta: [
                "categories" => [
                    "Artist"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lanlanhanhk/photos/a.910927395730801/1492571210899747/"
        },
        {
            url: "https://www.facebook.com/lanlanhanhk/photos/a.910927395730801/1396789173811285/"
        }
    ];
}
