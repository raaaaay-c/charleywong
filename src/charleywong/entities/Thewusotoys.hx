package charleywong.entities;

class Thewusotoys implements Entity {
    public final id = "thewusotoys";
    public final name = [
        zh => "鬍鬚仔玩具",
        en => "The Wuso Toys"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/thewusotoys/",
            meta: [
                "about" => "歡迎光臨鬍鬚仔玩具店！The Wuso.",
                "categories" => [
                    "Toy shop"
                ],
                "addr" => "旺角洗衣街129號地下閣樓",
                "area" => "Hong Kong",
                "tel" => "62261985"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.hk01.com/18%E5%8D%80%E6%96%B0%E8%81%9E/337583/%E9%80%83%E7%8A%AF%E6%A2%9D%E4%BE%8B-%E5%B0%8F%E5%BA%976-9-%E7%B4%9B%E7%BD%B7%E5%B8%82%E5%8F%8D%E4%BF%AE%E4%BE%8B-%E7%8E%A9%E5%85%B7%E5%BA%97-%E9%A3%9F%E6%9D%90%E9%9B%9C%E8%B2%A8%E5%BA%97%E9%9F%BF%E6%87%89"
        }
    ];
}
