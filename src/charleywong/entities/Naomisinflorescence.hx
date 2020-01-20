package charleywong.entities;

class Naomisinflorescence implements Entity {
    public final id = "naomisinflorescence";
    public final name = [
        zh => "愉悅花序",
        en => "Naomi\'s Inflorescence。"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/naomisinflorescence/",
            meta: [
                "about" => "DFA, Florist & Handcrafter",
                "categories" => [
                    "Florist"
                ],
                "email" => "naomisinflorescence@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/naomisinflorescence/posts/1807010889606339"
        }
    ];
}
