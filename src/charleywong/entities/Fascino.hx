package charleywong.entities;

class Fascino implements Entity {
    public final id = "FascinoBespoke";
    public final name = [
        en => "Fascino"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/FascinoBespoke/",
            meta: [
                "about" => "Fascino 在意大利文中解說charming 的意思，Fascino bespoke 希望透過來自歐洲的高尚布料，揉合一流的手工藝，精心為每位顧客打造完美的西裝，充分展現每位男士獨特的個性和最charming的一面",
                "categories" => [
                    "Retail company",
                    "Clothing (brand)",
                    "Men\'s clothes shop"
                ],
                "addr" => "Unit 1202, Grandmark, 10 Granville Road",
                "area" => "Tsim Sha Tsui",
                "email" => "fascino.bespoke@gmail.com",
                "tel" => "96004987"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/FascinoBespoke/posts/2537582913180842"
        },
        {
            url: "https://www.facebook.com/FascinoBespoke/posts/2604322659840200"
        }
    ];
}
