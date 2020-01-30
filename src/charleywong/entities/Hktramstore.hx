package charleywong.entities;

class Hktramstore implements Entity {
    public final id = "hktramstore";
    public final name = [
        zh => "叮叮老香港辦館"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hktramstore/",
            meta: [
                "about" => "「叮叮老香港辦館」以電車與春秧街市集為主題，售賣生活家品、小食、以至舊唱片等雜貨。店內也收藏了不少具歷史的物品，讓大家感受昔日老香港情懷，為傳承本土文化作出貢獻。",
                "categories" => [
                    "Cultural gift shop",
                    "Vintage shop",
                    "Games/toys"
                ],
                "addr" => "Shop no.229, 2/F, Siu Sai Wan Plaza, 10 Siu Sai Wan Road",
                "area" => "Hong Kong",
                "email" => "enquiry@hktramstore.com",
                "id" => "327352754671373"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hktramstore/posts/630592287680750"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

