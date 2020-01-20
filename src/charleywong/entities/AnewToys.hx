package charleywong.entities;

class AnewToys implements Entity {
    public final id = "AnewToys";
    public final name = [
        zh => "再生玩具店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/AnewToys/",
            meta: [
                "about" => "一項調查發現，6成半港童擁有50件或更多玩具，近1成半更多至數不清。逾3成半被訪家長月花2,000元買玩具，也有一件玩具過萬元，惟7成「失寵」玩具會被直接當垃圾丟棄。",
                "categories" => [
                    "Games/toys"
                ],
                "email" => "anewtoys@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/AnewToys/photos/a.1904055653214092/2665319520421031/"
        },
        {
            url: "https://www.facebook.com/AnewToys/posts/2656614651291518"
        },
        {
            url: "https://www.facebook.com/AnewToys/photos/a.1904055653214092/2642107512742232/"
        }
    ];
}
