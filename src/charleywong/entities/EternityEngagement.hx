package charleywong.entities;

class EternityEngagement implements Entity {
    public final id = "eternityengagement";
    public final name = [
        en => "Eternity Engagement"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/eternityengagement/",
            meta: [
                "id" => "1500180733344591",
                "about" => "Eternity Engagement 專門訂做各種類型的訂婚鑽戒。而我們所提供的鑽石均由認可之化驗所認證, 例如 GIA, IGI, EGL 等。免卻客戶擔心鑽石真偽的疑慮。\n\nInstagram: eternity_engagement",
                "categories" => [
                    "Jewellery/watches",
                    "Shopping & retail",
                    "Wedding planning service"
                ],
                "addr" => "Room 15,Unit A2,6 Floor,Kaiser Estate Phase 1,41 Man Yue Street",
                "area" => "Hung Hom",
                "email" => "eternityengagement@gmail.com",
                "tel" => "65234006"
            ]
        },
        {
            url: "https://www.instagram.com/eternity_engagement/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/eternityengagement/posts/3004078942954755"
        }
    ];
    public final tags:Array<Tag> = [
        wedding,
        accessories
    ];
}

