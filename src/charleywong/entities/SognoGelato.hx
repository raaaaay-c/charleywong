package charleywong.entities;

class SognoGelato implements Entity {
    public final id = "Sogno.Gelato.HK";
    public final name = [
        en => "Sogno Gelato"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Sogno.Gelato.HK/",
            meta: [
                "id" => "301802180478254",
                "categories" => [
                    "Ice cream shop",
                    "Shopping & retail",
                    "Gelato shop"
                ],
                "addr" => "荃新天地二期UG樓85 | Room 85, UG/F, Tsuen Wan, Kowloon",
                "area" => "Tsuen Wan, Hong Kong",
                "email" => "sogno.gelato.hk@gmail.com",
                "tel" => "60984187"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Sogno.Gelato.HK/photos/a.301808533810952/487819565209847/"
        },
        {
            url: "https://www.facebook.com/Sogno.Gelato.HK/photos/a.301808533810952/480584545933349/"
        },
        {
            url: "https://www.facebook.com/Sogno.Gelato.HK/photos/a.301808533810952/364891610835977/"
        }
    ];
}
