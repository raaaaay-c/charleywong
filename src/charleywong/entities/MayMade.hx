package charleywong.entities;

class MayMade implements Entity {
    public final id = "maymadecraft";
    public final name = [
        en => "MayMade"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/maymadecraft/",
            meta: [
                "about" => "為獨一無二製作專屬的特別",
                "categories" => [
                    "Artist"
                ],
                "email" => "maymadecraft@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/maymadecraft/posts/2309089095884690"
        }
    ];
}
