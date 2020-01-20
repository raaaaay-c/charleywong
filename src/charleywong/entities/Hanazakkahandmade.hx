package charleywong.entities;

class Hanazakkahandmade implements Entity {
    public final id = "hana.zakka.handmade";
    public final name = [
        zh => "花。夢。手作館",
        en => "Hana Zakka"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hana.zakka.handmade/",
            meta: [
                "about" => "店主享受由零開始的創作過程，大部份作品是由原材料出發。從選物料，設計圖案，到裁剪及縫製都一手包瓣。常從大自然及傳統工藝中找靈感， 透過布藝或熱縮片等素材創作獨一無二的飾品",
                "categories" => [
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hana.zakka.handmade/photos/a.1574395342586063/3959997464025827/"
        },
        {
            url: "https://www.facebook.com/hana.zakka.handmade/posts/3900279366664304"
        }
    ];
}
