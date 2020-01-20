package charleywong.entities;

class Monsteriz implements Entity {
    public final id = "monsterizdesign";
    public final name = [
        en => "monsteriz"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/monsterizdesign/",
            meta: [
                "about" =>
                "Textile Art. Original and handmade Cute Cloth Dolls. Made in Hong Kong\nPlease inbox message for purchase.\n原創手造布偶。結合日本布藝，香港創作。歡迎inbox message選購。",
                "categories" => [
                    "Brand",
                    "Art"
                ],
                "email" => "monsterizdesign@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/monsterizdesign/photos/a.711580278986303/1826540144156972/"
        }
    ];
}
