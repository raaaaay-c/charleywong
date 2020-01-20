package charleywong.entities;

class BlissfulForest implements Entity {
    public final id = "blissfulnagomipastel";
    public final name = [
        en => "Blissful Forest"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/blissfulnagomipastel/",
            meta: [
                "about" => "Blissful Forest 是一個藝術小天地，分享日本和諧粉彩(Nagomi Pastel Art)的作品和資訊，讓大家一起感受藝術的療治癒力和真善美。",
                "categories" => [
                    "Art",
                    "Community"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/blissfulnagomipastel/photos/a.1925262467737750/2413508265579832/"
        },
        {
            url: "https://www.facebook.com/blissfulnagomipastel/posts/2291403761123617"
        }
    ];
}
