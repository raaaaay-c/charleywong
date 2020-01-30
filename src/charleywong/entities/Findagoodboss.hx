package charleywong.entities;

class Findagoodboss implements Entity {
    public final id = "findagoodboss";
    public final name = [
        zh => "我要返工 良心平台"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://t.me/findagoodboss"
        },
        {
            url: "https://www.facebook.com/findagoodboss/",
            meta: [
                "id" => "100229234678997",
                "about" => "為因受這場「反送中」運動而受影響的「手足」（例如：罷工被解僱、因為發夢致出現經濟困難、在發夢中受傷/被捕/檢控），與良心僱主連結，提供空缺。",
                "categories" => [
                    "Community group"
                ],
                "email" => "findagoodboss2019@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/findagoodboss/posts/170466144321972"
        },
        {
            url: "https://www.facebook.com/findagoodboss/photos/a.103336021034985/178168863551700/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

