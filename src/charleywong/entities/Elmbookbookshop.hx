package charleywong.entities;

class Elmbookbookshop implements Entity {
    public final id = "elmbook.bookshop";
    public final name = [
        zh => "榆林書店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/elmbook.bookshop/",
            meta: [
                "about" => "榆林書店\n旺角西洋菜街樓上書店丨22週年誌慶丨為香港人精選中港台好書丨全年折扣優惠丨會員專享更多優惠丨為客人訂購書籍丶搜羅絕版二手書\n\nWhatsapp: 9644 3393\nIg: elmbook.bookshop",
                "categories" => [
                    "Independent book shop"
                ],
                "addr" => "旺角西洋菜南街59號三樓",
                "area" => "Hong Kong",
                "email" => "elmbook@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/elmbook.bookshop/photos/a.717725725012134/2546092265508795"
        }
    ];
}
