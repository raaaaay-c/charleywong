package charleywong.entities;

class Alohawasa implements Entity {
    public final id = "alohawasa";
    public final name = [
        zh => "亞囉哈滑沙"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/alohawasa/",
            meta: [
                "about" => "Draw & design happiness:D\nHK illustrator\n- alohawasa@gmail.com ...\n\n\n\n\nSee more",
                "categories" => [
                    "Artist"
                ],
                "email" => "wasayik@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/alohawasa/posts/1340265069486191"
        }
    ];
}
