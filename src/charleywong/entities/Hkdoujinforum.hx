package charleywong.entities;

class Hkdoujinforum implements Entity {
    public final id = "hkdoujinforum";
    public final name = [
        zh => "香港同人",
        en => "HKDoujin"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hkdoujinforum/",
            meta: [
                "about" => "香港同人HKDoujin 始創於2013年9月，包括論壇、專欄、網上新聞及期刊，希望能夠增加香港動漫同人活動的資訊透明度，加強彼此交流。",
                "categories" => [
                    "News and media website",
                    "Art",
                    "Community"
                ],
                "email" => "news@hkdoujin.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkdoujinforum/photos/a.380842582047312/1763609080437315/"
        }
    ];
}
