package charleywong.entities;

class DearJillAccessories implements Entity {
    public final id = "dearjill852";
    public final name = [
        en => "Dear Jill Accessories"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dearjill852/",
            meta: [
                "categories" => [
                    "Brand"
                ],
                "id" => "2016122335334291"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dearjill852/posts/2462387330707787"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

