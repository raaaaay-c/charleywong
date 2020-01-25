package charleywong.entities;

class JieJieUncleCat implements Entity {
    public final id = "JIEJIEHK";
    public final name = [
        en => "JieJie & UncleCat"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://yeahasoun.wix.com/jiejiehk"
        },
        {
            url: "https://www.facebook.com/JIEJIEHK/",
            meta: [
                "id" => "406156242829341",
                "about" => "爵爵，一個身在香港的台灣人，和一個曾住台灣的香港人，貓叔，合力炮製無限笑彈！\n\n【貓爵育成】之課金計劃啓動中，喜歡我們的作品就給一點鼓勵吧！\nhttp://yeahasoun.wix.com/jiejiehk",
                "categories" => [
                    "Comedian"
                ],
                "email" => "jiejie.unclecat@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/jiejie_unclecat/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/JIEJIEHK/posts/1927552150689735"
        }
    ];
}
