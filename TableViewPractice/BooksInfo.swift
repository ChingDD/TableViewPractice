//
//  BooksInfo.swift
//  TableViewPractice
//
//  Created by 林仲景 on 2023/4/23.
//

import Foundation
//傳輸資料時，通常會開一個新的檔案建立物件的型別，然後在傳輸資料的第二頁，會先宣告一個為該型別的物件來儲存第一頁送過來的東西
struct Book{
    var name:String
    var author:String
    var introduce:String
    var cover:String
}

enum BookSerius:String{
    case 因與聿案簿錄
    case 案簿錄．浮生
}

enum BookCovers:String{
    case 山貓
    case 水漬
    case 彩券
    case 秘密
    case 失去
    case 不明
    case 雙生
    case 終結
    case 回家
    case 破滅
    case 約定
    case 窺視
    
}
class 簡介{
    static let 第1集 = """
    身懷陰陽眼的衝動派－虞因；從不講話的紫眼冷靜少年－少荻聿，因與聿兩兄弟組成的互補搭檔，探究各種不可思議的離奇事件。

    身邊不時傳來淒厲尖銳的貓叫；一件件死亡事故伴隨著詭異的貓影發生－－娃娃臉的雙胞胎警官兄弟加上唸大學的兒子虞因，虞家看起來是個平凡的三口家庭。但他們平靜的家居生活在這一天起了波濤，因為一家之長決定收養滅門血案遺孤少荻聿。虞因直覺到這個新的啞巴弟弟身世並不單純，但還來不及深究，就發現身邊不時傳來淒厲尖銳的貓叫；一件件死亡事故伴隨著詭異的貓影發生，死者之間似乎隱隱有著關聯……

    其實，虞因身懷陰陽眼，能見人所不能見，而少荻聿雖然然是個啞巴，對人對事卻有著敏銳的洞察力；兄弟倆正好組成互補的搭檔，探究各種不可思議的事件。奇幻靈異、驚悚推理、歡樂搞笑，《因與聿．案簿錄》案件第一彈，即將帶給你最具親切感的靈異推理樂趣。
    """
    static let 第2集 = """
    牆上的水漬、窗上的水痕、雜草蔓生的水池、浮屍的水塔……你知道嗎？其實所有的水都是相通的。
    臨時充當快遞的小聿，莫名其妙在大廈的電梯溺水，獲救後卻全無記憶，自此之後，意外事故不斷。牆面上莫名出現的血紅鬼臉，水龍頭無故斷開噴水，浴室玻璃猛然破裂、飛散傷人，以及死水潭中冒出的小手……阿因與小聿身邊屢屢出現詭異的水漬，危險與警告步步進逼，越來越嚴重。原來，這一切都是因為小聿的身上，已經被「做了記號」……
    無聲的紫眼少年與身懷陰陽眼的衝動派，因與聿的不可思議事件簿。
    """
    static let 第3集 = """
    一張彩券串起兩件不可思議事件深夜的奔跑聲、頻頻作響的手機
    是因為人性的貪婪，還是
    彩券，帶來的是希望還是絕望？

    街上遇到的少年，高喊著：我中獎了！
    沒想到隔天竟上了社會頭條新聞，「自殺」兩字怎麼說都很奇怪

    摔壞的手機頻頻作響、死者傳來的簡訊多到讓人受不了，
    無人的深夜街道迴盪著莫名的跑步聲、請來的錢仙停在原地打轉
    這一切無法解釋的怨念與執著，到底暗示了什麼？

    就在案情逐漸明朗的同時，阿因又會陷入什麼樣的危機！？
    而小聿心中究竟在盤算著什麼呢？
    """
    static let 第4集 = """
    我們死了，剩下照片，還有秘密……相隔多年的懸案，因為一具爬滿螞蟻的女屍而重新啟動。僻靜巷子中的神祕凶殺案，讓休假中的虞夏又忙碌了起來！沒想到這次連鐵齒的虞夏也撞邪了。陳屍現場的相片拍到不該出現的女人、空中莫名飛竄而來的襲警磚塊、小小擦傷竟演變成無法治癒的中毒現象……
    虞夏該如何化解總總針對他的而來的靈異現象？另一方面，在圖書館主動找上小聿的女孩，和小聿之間到底有什麼祕密？他們在尋找什麼「東西」……而阿因從女孩身上感到的異樣，會為小聿和自己帶來什麼危機？
    """
    static let 第5集 = """
    如果那時有人發現就好了……本書介紹小聿就讀的高中，接連發生失蹤事件，虞夏奉命潛入學校追尋線索！卻意外發現層層相扣的案中案……信封裝著的泥土與雜草、黑袋裡的BJD娃娃、鬼樓中消失的線香、頻頻出現的半顆頭顱、無人圖書館傳來的啜泣聲，詭異的現象將所有事件串連起來，謎題一步步揭曉，危機一步步近逼，沒想到真相就藏在機器轟隆隆的運轉聲中……
    自從四樓案件過後，阿因開始發現小聿不對勁之處，急於尋找過去祕密的小聿與想要釐清問題的阿因，會掀起怎樣的風暴？兩人之間的關係會有所突破嗎？
    """
    static let 第6集 = """
    「夜戲」，即將上演⋯⋯夏日，是熱血和玩樂的季節！同時，也是黑影蠢蠢欲動的時機。
    十五年前彷如煉獄般的火災，悄悄連上了莫名消失的人們⋯⋯愉快的別墅之旅意外遇上神祕失蹤事件，十九個人一夕之間下落不明，唯一剩下的少女，驚嚇過度，無法思考，只喃喃唸著：「那時候⋯⋯為什麼會是二十個人？」黑色的戲台、門縫裡窺探的視線、只剩半截的鑰匙，皆起於他們打開了「不該打開的門」。
    面對隱藏暗處的危機，最佳拍檔——阿因和小聿，將如何聯手揭開一件件真相，救出危在旦夕的朋友？屬於他們的特別假期於焉展開！
    """
    static let 第7集 = """
    聽說，這世界上會有兩張和自己一模一樣的臉孔，當兩者甚或三者相遇時，將會⋯⋯
    一直追緝的嫌犯，終於有了最新消息，虞夏拚命追捕途中，竟與嫌犯雙雙從高樓墜下，緊急送醫、生死未明之下，卻發現本該是虞夏的人竟出現在另外一個地方！
    小聿與阿因的關係，因為新出現的「盟友」而出現裂痕，兩人之間的鴻溝，能否修補如初？阿因臉上出現的死相，又是代表何意？新的危機出現，難道代表了生與死的訣別？
    """
    static let 第8集 = """
    該看到東西的地方反而看不到，被預期的表現卻沒有表達出來，事情並不單純，人心更難以捉摸，你，準備好揭開真相了嗎？
    時間漸漸推移，小聿來到虞家已經一年多了，與阿因相處越久，他的情感越是外放，但每當眾人不注意時，暗暗彎起唇角的那抹笑，究竟隱含了什麼祕密？他和方苡薰又偷偷策劃著什麼計謀？校園中偶遇的小女孩，將阿因帶往了「祕密基地」，沒想到那個充滿心碎記憶的地方，竟然就是所有事件的開端！接踵而來的威脅、警告，是危機也是通往真相的捷徑，故事到了最後，一切一切開始慢慢改變了。
    """
    
    static let 第3_1集 = """
    如果回家是一件天經地義的事情，
    回不了家的他們，又該何去，何從⋯⋯

    經歷了滅門血案、連環殺人事件案中案，
    記憶力超強的少荻聿與擅長圖形分析的言東風，
    和後天獲得陰陽眼能力的虞因共組了設計工作室「浮生」。
    沒想到社會新鮮人的工作才剛上軌道，就化為一則都市傳說——
    走過窄小街道、看見盡頭的題字招牌，
    你就能在此越過分隔生死的界線，聽見來自另一個世界的聲音⋯⋯

    虞因「看見」的能力，加上總是「被找上」的運氣，讓他頻頻碰到好兄弟。
    受友人委託的白柴虐殺案，便順理成章牽扯出一樁少女失蹤事件，
    凶手是後台很硬的男友？情同兄妹的網友？抑或僅是叛逆期離家出走？
    真相尚未水落石出，廢棄工廠中那場被收拾得太過乾淨的毒品趴，
    更讓眾人感到一陣山雨欲來的不妙感覺⋯⋯
    """
    static let 第3_2集 = """
    『這個世界，沒有容身之處。』

    凶宅夜烤，沒見到阿飄，回程時卻全員遭遇車禍大劫，
    傷者更像中邪般，一個個從窗口陸續跳出⋯⋯
    撲朔迷離的詭異發展，意外牽扯沉寂多年的老宅舊事，
    一太指定的新任校園擺平者本打算不牽拖他人，
    但成為傳奇的某學長真的會乖乖不管？

    露水淨身、唸經開天眼、夜審陰的得道法師轉世？
    畢業快兩年，阿因的傳說即使越傳越歪，
    也無法減少他被纏上遇險的機率。
    多年前塵埃落定的雙命案在他捨命協助下或能真相大白，
    然而已被搗得破滅的人生、未來、希望⋯⋯
    最終還能否獲得救贖？
    """
    static let 第3_3集 = """
    「約定好了，
    我會，去找你。」

    才剛解決樂園的鬧鬼事件，
    又遇上非他不可的委託堵上門。
    面對走投無路、中部信仰大禮包也幫不上忙的商務菁英，
    虞因只好硬著頭皮，再增添一筆都市傳說的紀錄。

    是什麼樣的存在讓神佛符咒不管用？
    跟在身邊多年無事的黑影，為何在這一年內頻頻發難？
    線索追溯困難，當眾人各自四散忙碌，
    卻沒想到，虞家被人盯上了⋯⋯
    """
    static let 第3_4集 = """
    高顏值魅力無法擋？
    因一樁偷拍跟蹤案，東風成了他人獵物，聿還為此負傷。
    然而兩人的誘敵之計，狠狠踩上虞因的底線！

    離奇命案、難以脫離的異度空間、被下咒的布偶與遺體⋯⋯
    虞因即將用罄隨身攜帶的大師淨水，
    但不斷現身的安靜黑影，卻一次次給出了充滿執念的指引。

    網路世界，無處不見窺探視線。
    三人嚴密守護的基地．浮生工作室，還是遭到非法入侵了！
    """
}
