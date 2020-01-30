package charleywong.entities;

class HKGETV implements Entity {
    public final id = "HKGETV";
    public final name = [
        zh => "香城教育電視",
        en => "HKG ETV"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/channel/UCtzu8W55-S9biNCKgHg1v7w"
        },
        {
            url: "https://www.facebook.com/HKGETV/",
            meta: [
                "id" => "110403940298217",
                "about" => "由一班文宣巴絲自發組成嘅「非專業」電視台，致力搜羅網上各種公眾關注嘅題材製成短片，並由淺入深探討，希望將林林總總嘅複雜問題同概念拆解，達至公共知識普及化。香港人加油！",
                "categories" => [
                    "Media"
                ],
                "email" => "info@hkgetv.com"
            ]
        },
        {
            url: "https://www.instagram.com/hkgetv/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKGETV/posts/141824403822837"
        },
        {
            url: "https://www.facebook.com/HKGETV/posts/124380075567270"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}
