package charleywong.entities;

class CUHKACS implements Entity {
    public final id = "CUHKACS";
    public final name = [
        zh => "香港中文大學學生會動漫畫研究社",
        en => "Animation & Comic Society, cuhksu"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CUHKACS/",
            meta: [
                "about" => "香港中文大學學生會動漫畫研究社，簡稱「動漫研」，於一九九六年由一群愛好動漫的中大學生成立。\n本社擁有過兩萬本漫畫、雜誌、工具書供會員借閱及PS3 Wii 音響等供會員使用",
                "categories" => [
                    "Community"
                ],
                "email" => "cuacs24@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CUHKACS/photos/a.528138220546706/2887013891325782/"
        },
        {
            url: "https://www.facebook.com/CUHKACS/posts/2770063599687479"
        }
    ];
}
