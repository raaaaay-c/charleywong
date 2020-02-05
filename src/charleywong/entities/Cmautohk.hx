package charleywong.entities;

class Cmautohk implements Entity {
    public final id = "cmautohk";
    public final name = [
        zh => "隨意門上門汽車美容"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.cmauto.com.hk"
        },
        {
            url: "https://www.facebook.com/cmautohk/",
            meta: [
                "id" => "985160714904254",
                "about" => "隨意門汽車美容 │ CM AUTO SERVICES COMPANY\n提供專業上門打蠟 洗車 蒸籠 深層內籠清潔 皮革翻新 汽車鍍膜等等服務。\n\n歡迎致電 / Whatsapp 查詢 / 報價：6633 9489 Mandy Mak",
                "categories" => [
                    "Vehicle body shop",
                    "Motor vehicle company",
                    "Car wash"
                ],
                "addr" => "荃灣灰窰角街50-56號昌泰工業大廈6字樓B室",
                "area" => "Hong Kong",
                "email" => "mandymak@cmauto.com.hk",
                "tel" => "66339489"
            ]
        },
        {
            url: "https://www.instagram.com/cm.auto.service.company/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cmautohk/posts/2514721601948150"
        },
        {
            url: "https://www.facebook.com/cmautohk/photos/a.989334341153558/2244081539012159/"
        }
    ];
    public final tags:Array<Tag> = [
        automobile
    ];
}

