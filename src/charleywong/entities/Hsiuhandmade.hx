package charleywong.entities;

class Hsiuhandmade implements Entity {
    public final id = "hsiuhandmade";
    public final name = [
        zh => "秀。手作"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hsiuhandmade/",
            meta: [
                "about" => "秀。手作\n手作。用自己一對手, 一針一線的做出手作品\n秀。認為毛孩是很值得同樣擁有獨一無二的東東\n秀。更喜歡單憑一對手做物, 沒有一點機械的行跡\n秀。認為這會有更特別的感覺",
                "categories" => [
                    "Product/service",
                    "Pet supplies",
                    "Art"
                ],
                "email" => "i_am_hsiu@yahoo.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hsiuhandmade/posts/2722784267752984"
        }
    ];
}
