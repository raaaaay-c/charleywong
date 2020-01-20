package charleywong.entities;

class Poetaster implements Entity {
    public final id = "poetaster.florist";
    public final name = [
        en => "Poetaster"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/poetaster.florist/",
            meta: [
                "categories" => [
                    "Product/service",
                    "Patio/garden"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/poetaster.florist/photos/a.158588844789212/431647170816710/"
        }
    ];
}
