package charleywong.entities;

class NaturallyYouNeed implements Entity {
    public final id = "naturallyyouneedHK";
    public final name = [
        en => "Naturally YouNeed"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/naturallyyouneedHK/",
            meta: [
                "about" => "【簡單‧天然‧健康】是我們對生活的承諾。\n喜歡慢活，喜歡大自然，喜歡手作。\n喜歡，送上健康的祝福。...\n\n\nSee more",
                "categories" => [
                    "Health/beauty",
                    "Community"
                ],
                "email" => "naturallyyouneed@gmail.com",
                "tel" => "66441344"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/naturallyyouneedHK/posts/2151618628388522"
        },
        {
            url: "https://www.facebook.com/naturallyyouneedHK/posts/2393214604228922"
        },
        {
            url: "https://www.facebook.com/naturallyyouneedHK/posts/2384775781739471"
        }
    ];
}
