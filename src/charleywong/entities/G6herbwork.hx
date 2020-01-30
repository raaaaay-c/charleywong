package charleywong.entities;

class G6herbwork implements Entity {
    public final id = "g6herbwork";
    public final name = [
        en => "G6herbwork",
        zh => "蠶豆坊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.g6herbwork.com.hk"
        },
        {
            url: "https://www.facebook.com/g6herbwork/",
            meta: [
                "id" => "277904399338856",
                "about" => "作為一間小小小社企,我們宗旨是\"from mother-baby to mother-baby\",致力製造小寶寶包括蠶豆症寶寶的護理用品及設立活動支持媽媽和寶寶們\n\n歡迎查詢:...\n\n\nSee more",
                "categories" => [
                    "Beauty, cosmetic & personal care"
                ],
                "addr" => "觀塘成業街16號怡生工業中心7樓G座32室",
                "area" => "Hong Kong",
                "email" => "g6herbwork@gmail.com",
                "tel" => "66769956"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/g6herbwork/posts/856845218111435"
        },
        {
            url: "https://www.facebook.com/g6herbwork/photos/a.319625628500066/806726956456595/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}
