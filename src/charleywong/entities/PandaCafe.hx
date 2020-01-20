package charleywong.entities;

class PandaCafe implements Entity {
    public final id = "Pan-da-Cafe-120736337973194";
    public final name = [
        en => "Pan da Cafe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Pan-da-Cafe-120736337973194/",
            meta: [
                "about" => "一個富田園風味的環境，\n讓你享受多款特式咖啡；\n一個富親切感的地方，\n給你品嘗各款美食。",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "G/F., 23 See Cheung St., Sai Kung. 西貢市場街23號地下",
                "area" => "Sai Kung",
                "tel" => "90952998"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=2330693156977490&id=120736337973194"
        }
    ];
}
