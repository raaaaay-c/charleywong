package charleywong.entities;

class RockEmpire implements Entity {
    public final id = "rockempire.hk";
    public final name = [
        en => "Rock Empire"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/rockempire.hk/",
            meta: [
                "id" => "185858052131",
                "about" => "地址 : 香港, 九龍, 土瓜灣, 上鄉道35-37號, 聯發大廈5/F\n電話 : 34805650 / 93097858",
                "categories" => [
                    "Musical instrument store",
                    "Musician/band",
                    "Retail company"
                ],
                "addr" => "5/F, Luen Fat Mansion, 35-37 Sheung Heung Rd, To Kwa Wan",
                "area" => "Kowloon, Hong Kong",
                "tel" => "34805650"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/rockempire.hk/photos/a.10151080394902132/10156044861177132/"
        },
        {
            url: "https://www.facebook.com/rockempire.hk/photos/a.10151080394902132/10155940037297132/"
        }
    ];
}
