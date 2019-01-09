//
//  productTableViewController.swift
//  skin care
//
//  Created by User14 on 2019/1/3.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class productTableViewController: UITableViewController {
    
    var skinType: String?
    var productType: String?
    
    var oilToner = [
        Product(name: "innisfree 綠茶籽保濕調理液", price: 650.00, description: "產品介紹\n清爽的水感質地，清爽包覆肌膚的多用途化妝水，打造柔嫩、光滑的膚質，強效鎖水保濕科技 & 維他命B5衍伸物，鮮榨綠茶水2.0供給肌膚水分，綠茶籽油鎖住水分、強化肌膚屏障，清爽補水輕柔延展、立即滲透！為清潔後乾燥的肌膚補充所需的水分，打造水嫩、透亮的肌膚\n使用方法\n取適量沿皮膚紋理由內至外輕柔塗抹臉、頸部。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"], imageAddress: "https://www.innisfree.com/tw/zh/upload/product/25451_l.png"),
        Product(name: "innisfree 濟州石榴活妍美膚水", price: 750.00, description: "產品介紹\n直接於濟州石榴榨出的鮮石榴汁，含有5種有效成分，能有效幫助解決肌膚老化後發生的水分、活力、光澤、彈力、細紋等問題，幫助肌膚恢復健康。\n以濟州石榴鮮汁含有的鞣花酸成分，能幫助肌膚面對各式外部壓力，緩和老化跡象。培養肌膚自然防禦力，使肌膚維持健康，充滿活力。\n含有透明質酸成分，能於洗顏後有效幫助肌膚涵水豐富不乾澀。\n使用方法\n洗顏後，取適當量於化妝棉上，順著肌膚紋理進行擦拭般塗抹，或以手部輕輕塗抹。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://img1.momoshop.com.tw/goodsimg/0004/782/659/4782659_B.jpg?t=1543608160"),
        Product(name: "innisfree 濟州溫泉泡泡調理水", price: 720.00, description: "產品介紹\n含有86.9%的充滿豐富礦物質及營養之濟州山房山碳酸溫泉水，帶給肌膚深層水潤。\n平衡肌膚酸鹼值，恢復健康肌膚，能迅速針對洗顏後受損的肌膚酸鹼平衡，恢復肌膚生機健康。\n使用方法\n洗顏後，取適當量於化妝棉上，順著肌膚紋理擦拭；或直接以手部塗抹。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://www.innisfree.com/tw/zh/upload/product/21849_l.png"),
        Product(name: "innisfree 橄欖真萃潤澤柔膚水", price: 580.00, description: "產品介紹\n橄欖極效保濕因子(多元酚, 維他素E, 油酸)深層滋潤乾燥的肌膚，並為肌膚建立強大的保濕屏障。\n升級版本的特級初榨橄欖油成分，更加保濕與滋養。\n保濕的質地在乾燥肌膚上形成第一道鎖水屏障，肌膚不再乾燥脫屑。\n使用方法\n取適量沿皮膚紋理由內至外輕柔塗抹臉、頸部。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://www.innisfree.com/tw/zh/upload/product/24580_l.png"),
        Product(name: "innisfree 濟州島火山泥毛孔調理水", price: 580.00, description: "產品介紹\nSebum control technology TM：抑止多餘油脂，保持肌膚清爽柔嫩。\n能清除洗臉後多餘老廢物質的擦拭型化妝水。\n使用前均勻搖晃：混合沉於底部的礦物性粉末，倒於化妝棉上塗抹於肌膚，具有強效的油脂吸附力，解決毛孔粗大問題。\n使用方法\n潔顏後，以化妝棉取適量，依臉部肌膚紋路輕輕擦拭。內含火山泥粉末，使用前請充分搖晃。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://image-cdn-flare.qdm.cloud/q59761f7fb14b6/image/cache/data/2018/05/30/63c40e3c7f1c1e17aa015b13945cbafa-max-w-1024.png"),
        Product(name: "Kiehl's 亞馬遜白泥淨緻毛孔化妝水", price: 960.00, description: "產品介紹\n富含珍貴的亞馬遜白泥，有助吸收多餘油脂，淨化肌膚表面的髒污及老廢角質。\n使用後，肌膚不泛油光，毛孔變得更細緻，緊緻毛孔同時增加肌膚含水量，清爽不緊繃。\n適用於油性肌膚使用。\n使用方法\n每次使用前請先搖勻，取適量於化妝棉上或掌心，輕拍於洗淨的臉上，早晚皆可使用。",address: ["台北市中正區忠孝西路一段66號","台北市大同區承德路一段1號","台北市大安區忠孝東路四段45號"],imageAddress: "https://dg9ugnb21lig7.cloudfront.net/uploads/product_image/27003/1/_250x250_27003_w_250xh_250xfar_C.jpg"),
        Product(name: "倩碧 無油光淨痘潔膚水", price: 900.00, description: "產品介紹\n含藥化妝品配方，能溫和去除老廢角質、去除導致痘痘的多餘油脂，清潔堵塞的毛孔並控制油光，改善因毛孔阻塞而產生的痘痘，同時減少臉部皮脂腺出油，降低痘痘發生機率。搭配無油光淨痘系列使用，能在3天內減少37%的痘痘。\n使用方法\n每天早晚各使用一次，使用前請先搖勻，以棉花球沾濕，輕輕擦過臉部與頸部。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://dg9ugnb21lig7.cloudfront.net/uploads/product_image/40295/1/_250x250_40295_w_250xh_250xfar_C.jpg"),
        Product(name: "蘭芝 水酷肌因保濕醒肌露_清爽型", price: 1000.00, description: "產品介紹\n超導離子礦物水+維生素A.C.E，強化細胞防護及免疫能力、黑色素抑制和消除、協助膠原蛋白自主再生合成、優越的保濕、抗老等肌膚修復功能。\n維生素B3衍生物，協助軟化和代謝老廢角質，並幫助明亮肌膚。\n使用方法\n早晚清潔洗臉後使用，自臉部肌膚中央往外輕抹搭配化妝棉沾取適量，由臉的中心分別往兩邊輕擦，頸部由下往上的方式擦拭。",address: ["台北市大同區承德路一段1號","台北市信義區松壽路11號","台北市大安區忠孝東路四段45號"],imageAddress: "https://im1.book.com.tw/image/getImage?i=https://www.books.com.tw/img/N01/096/51/N010965130.jpg&v=57adc095&w=348&h=348"),
        Product(name: "植村秀 新．光燦新肌晶透露(清爽型)", price: 3300.00, description: "產品介紹\n富光燦新肌晶透露富含無比珍貴的日本白牡丹精萃，以獨家極效晶透微利極速滲透肌底被肌膚吸收，深度潤澤保濕肌膚，快速喚醒肌膚自然光采，彩妝也因此閃耀動人光澤。\n極效晶透微粒：急速滲透、倍速吸收。\n使用方法\n早晚清潔洗臉後使用，自臉部肌膚中央往外輕抹搭配化妝棉沾取適量，由臉的中心分別往兩邊輕擦，頸部由下往上的方式擦拭。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://shoplineimg.com/5a8293389f9a4f3b09000791/5b6172a09a76f0194b000aa4/800x.png?")]
    var medToner = [
        Product(name: "innisfree敏肌極簡柔膚水", price: 255.00, description: "產品介紹\n敏感肌膚專用調理水 - 解決因多種刺激造成肌膚敏感問題的低刺激調理水。\n柳樹皮成分 : 幫助去角質同時使肌膚有彈性。\n99%天然萃取成分 : 以天然原料製成的無防腐劑調理液 。\n25%天然水分補給 : 提供長效保濕。\n使用方法\n潔膚後，閉上雙眼,在臉部的整體輕薄地噴3~4次，再輕輕拍打使其吸收。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://www.innisfree.com/tw/zh/upload/product/22185_l.png"),
        Product(name: "innisfree 香榧鬥荳調理修護水", price: 770.00, description: "產品介紹\n有效舒緩肌膚乾燥，含有角鯊烷、甘油與維他命B5延伸物，有效維持肌膚油水平衡，以及舒緩肌膚底層乾燥帶來的問題。\n香榧油與積雪草4X的強大舒緩效果，添加萃取自積雪草的4大成分，且經過30倍的濃縮，可發揮強大的舒緩修護效果，以及濟州香榧油溫和抗菌與強化肌膚防禦力的功效。\n通過致粉刺測試，痘痘肌也可以安心使用的化妝水。\n使用方法\n潔膚後，使用化妝棉或徒手取適量由內而外輕拭於乾淨的肌膚上。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://www.innisfree.com/tw/zh/upload/product/27363_l.png"),
        Product(name: "Kiehl's 冰河保濕無油清爽化妝水", price: 800.00, description: "產品介紹\n清爽不含油脂的保濕化妝水，能溫和調理並再次潔淨肌膚，讓肌膚感覺清新舒適。\n含冰河醣蛋白、澳洲白茅等天然保濕成份，能有效補充水份、鎮定舒緩肌膚，使肌膚恢復水潤狀態。\n保濕化妝水能減少肌膚表面油脂，搭配冰河保濕無油清爽系列使用效果更佳。\n使用方法\n取適量保濕化妝水於化妝棉上或掌心，輕拍於洗淨的臉上，早晚皆可使用。",address: ["台北市忠孝西路一段66號","台北市大同區承德路一段1號","台北市大安區忠孝東路四段45號"],imageAddress: "https://im2.book.com.tw/image/getImage?i=https://www.books.com.tw/img/N01/124/78/N011247867.jpg&v=5a26703c&w=348&h=348"),
        Product(name: "雅詩蘭黛 微分子肌底原生露", price: 1850.00, description: "產品介紹\n獨家「微分子精準高滲透科技」微分子化每一滴珍貴成分，創造超強滲透力，讓肌膚的吸收力更好!\n層層喚醒肌膚年輕力量! 一拍超補水、二拍超透亮、三拍超年輕!\n在清潔後，特潤超導修護露之前使用。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://dg9ugnb21lig7.cloudfront.net/uploads/product_image/56526/1/_250x250_56526_w_250xh_250xfar_C.jpg"),
        Product(name: "蘭芝 純淨保濕機能水EX", price: 950.00, description: "產品介紹\n溫和配方，適用於敏感肌膚，全新無香味版！無油配方！通過低敏度測試。\n天然荔枝萃取成分：能溫和舒緩肌膚表層不適，有效掌控維持肌膚健康平衡狀態。\n純淨海洋深層水：富含礦物質的純淨海洋深層水，活化天然保濕因子，形成天然屏障，增加保水度。\n使用方法\n使用於微濕肌膚上，輕拍臉部肌膚幫助機能水被臉部肌膚所吸收，取用適量的機能水將化妝棉沾濕，順著肌膚紋理輕拭後，將沾濕的化妝棉重複輕拍全臉3-7次，讓肌膚完整吸收機能水，創造純淨透明膚質。",address: ["台北市大同區承德路一段1號","台北市信義區松壽路11號","台北市大安區忠孝東路四段45號"],imageAddress: "https://dg9ugnb21lig7.cloudfront.net/uploads/product_image/81243/1/_250x250_81243.jpg"),
        Product(name: "植村秀 全能奇蹟金萃精華水", price: 800.00, description: "產品介紹\n黃金精油微粒，將經由完整包覆於微粒中，打造輕盈水感靠老精華水質地，為肌膚修護滋養，同時深度保濕。\n肌底賦活緊顏科技，深度緊緻肌膚，恢復彈性及肌膚完美狀態。\n使用方法\n早晚清潔洗臉後使用，自臉部肌膚中央往外輕抹搭配化妝棉沾取適量，由臉的中心分別往兩邊輕擦，頸部由下往上的方式擦拭。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://s.yimg.com/zp/images/9ECE6E788F9975674013275797A7A82FEC4E86EE")]
    var dryToner = [
        Product(name: "innisfree 濟州寒蘭複合滋養水", price: 800.00, description: "產品介紹\n比上一代含有更多抗老成分的「寒蘭肌活萃取物2.0™」，針對加速老化的肌膚彈性、皺紋、膚色暗沉與乾燥問題給予強力的防護。\n含有濟洲青豆的玻尿酸成分，使肌膚潔顏後保濕、充滿彈性的高濃度滋養水。\n來自「凝膠網狀技術」的滋養凝膠質地，讓滋養水均勻包覆肌膚，形成保濕膜、供應肌膚水分，提升肌膚彈潤感，不會感到黏膩。\n使用方法\n潔膚後取適量輕拍臉部與頸部使產品吸收。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://zh-tw.innisfree.com/tw/zh/upload/product/15744_l.png"),
        Product(name: "innisfree 濟州熔岩海洋水調理液", price: 850.00, description: "產品介紹\n含特殊礦物質成分的熔岩海水所特有的水分能量，能賦活肌膚、帶來抗齡效果。\n以高效水分防護，強化濟州熔岩海水含3種水因子及天然保濕因子活力，帶來彈力緊緻。\n以豐富的水感迅速供給肌膚水分，全面整頓肌膚，並能幫助吸收化妝水。\n使用方法\n潔顏後取適當量塗抹於臉部或脖子部位，並輕揉按摩以幫助吸收；或置於化妝棉上順著肌膚紋理溫柔擦拭塗抹。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://dg9ugnb21lig7.cloudfront.net/uploads/product_image/76816/1/_250x250_76816.jpg"),
        Product(name: "Kiehl's 冰河保濕冰河保濕機能水", price: 800.00, description: "產品介紹\n獨特凝露狀質地的保濕化妝水，能補充肌膚水份，同時保濕、滋潤乾燥肌膚。\n也可於皮膚極度乾燥不適時，使用化妝棉濕敷於皮膚乾燥處，做為急救補充水份之用。\n保濕化妝水溫和不含酒精配方，所有膚質都可安心使用，敏感性肌膚亦適用。\n使用方法\n取適量保濕化妝水於化妝棉上或掌心，輕拍於洗淨的臉上，早晚皆可使用。",address: ["台北市中正區忠孝西路一段66號","台北市大同區承德路一段1號","台北市大安區忠孝東路四段45號"],imageAddress: "https://s.yimg.com/zp/images/6F6D8A95A57B159E927E1EF89A89A58C0B6BAA1B"),
        Product(name: "SK-Ⅱ 亮采化粧水", price: 2280.00, description: "產品介紹\n這瓶質地清爽的化粧水，蘊含天然酵母萃取PITERA™及AHA，能溫和地清除老化角質，並能幫助潔淨肌膚，讓後續使用的保養品吸收得更好。\n使用方法\n以化妝棉沾濕亮采化粧水，然後從T字位開始輕拍，特別留意容易泛油的肌膚部位，繼續將化妝棉從下巴向上按摩到顴骨和臉頰部位，最後從下向上輕輕按摩頸部。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://sk-ii-desktop-tw-cdn.azureedge.net/OP/img/product/facial-treatment-clear-lotion/1.jpg"),
        Product(name: "倩碧 水磁場極效保濕精露", price: 1450.00, description: "產品介紹\n延續水磁場系列一貫極致保濕力，全新水磁場極效保濕精露做為保濕的第一步驟，輕盈潤澤的精華露質地可以瞬間滲透肌底，提供高機能的密集保濕補水功效，肌膚瞬間潤澤飽水，透出明亮水嫩光，Q彈水潤一整天。\n使用方法\n每天早晚在清潔肌膚與潔膚水後，倒直徑大約 2.5 公分的量在手中，然後輕拍於肌膚上。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://im2.book.com.tw/image/getImage?i=https://www.books.com.tw/img/N01/130/34/N011303413.jpg&v=5ab31e4e&w=348&h=348"),
        Product(name: "蘭芝 水酷肌因保濕醒肌露_水潤型", price: 1050.00, description: "產品介紹\n超導離子礦物水+維生素A.C.E，強化細胞防護及免疫能力、黑色素抑制和消除、協助膠原蛋白自主再生合成、優越的保濕、抗老等肌膚修復功能。\n白樺萃取，富含超過四種以上的優越礦物元素和氨基酸，有效幫助肌膚滋潤保濕和細胞修護。\n使用方法\n早晚清潔洗臉後使用，自臉部肌膚中央往外輕抹搭配化妝棉沾取適量，由臉的中心分別往兩邊輕擦，頸部由下往上的方式擦拭。",address: ["台北市大同區承德路一段1號","台北市信義區松壽路11號","台北市大安區忠孝東路四段45號"],imageAddress: "https://www.laneige.com/tw/zh/laneige-pim-img/product/essential-power-skin-refiner-moisture/essential-power-skin-refiner-moisture_01.png"),
        Product(name: "植村秀 新．光燦新肌晶透露(滋潤型)", price: 3300.00, description: "產品介紹\n光燦新肌晶透露富含無比珍貴的日本白牡丹精萃，以獨家極效晶透微利極速滲透肌底被肌膚吸收，深度潤澤保濕肌膚，快速喚醒肌膚自然光采，彩妝也因此閃耀動人光澤。\n極效晶透微粒：急速滲透、倍速吸收。\n使用方法\n早晚清潔洗臉後使用，自臉部肌膚中央往外輕抹搭配化妝棉沾取適量，由臉的中心分別往兩邊輕擦，頸部由下往上的方式擦拭。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://shoplineimg.com/5a8293389f9a4f3b09000791/5b61728372fdc0210e018ad2/800x.png?")]
    
    var oilLotion = [
        Product(name: "innisfree 綠茶水平衡調理乳", price: 600.00, description: "產品介紹\n為肌膚保濕獨家栽種的濟州美肌綠茶。\n最新的雙重鮮榨技術，萃取出更加保濕的鮮榨綠茶水2.0。\n清爽不黏膩的乳液，給予肌膚柔嫩的保濕度。\n使用方法\n取適量沿皮膚紋理由內至外輕柔塗抹臉、頸部。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://img2.momoshop.com.tw/goodsimg/0005/538/477/5538477_B.jpg?t=1540218416"),
        Product(name: "innisfree 綠茶籽保濕精華乳", price: 720.00, description: "產品介紹\n質地清爽細緻的乳液，帶給肌膚精華液獨有的豐富營養，給予妝前肌膚完美打底。\n雙重保濕機制，給予肌膚雙層鎖水功效。\n簡單的保養步驟：綠茶籽保濕精華->精華乳,能提升後續底妝的服貼效果。\n使用方法\n取適量沿皮膚紋理由內至外輕柔塗抹臉、頸部。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://img2.momoshop.com.tw/goodsimg/0005/539/705/5539705_B.jpg?t=1539978661"),
        Product(name: "Kiehl's 亞馬遜白泥淨緻毛孔乳液", price: 1260.00, description: "產品介紹\n清爽、無多餘油份，容易滲透吸收，可有效調理膚質肌理、緊緻毛孔，使用後肌膚清爽無負擔。\n富含珍貴的亞馬遜白泥，能溫和代謝老廢角質，重現細緻毛孔。\n適合油性肌膚使用，每日早晚皆可使用。\n使用方法\n每次使用前請先搖勻，每日早晚於化妝水及精華液後使用，中性及中偏乾膚質若覺得不夠滋潤，可以另外補充保濕精華液或乳液。",address: ["台北市忠孝西路一段66號","台北市大同區承德路一段1號","台北市大安區忠孝東路四段45號"],imageAddress: "https://img1.momoshop.com.tw/goodsimg/0005/054/542/5054542_B.jpg?t=1526005082"),
        Product(name: "蘭芝 水酷肌因智慧保濕凝凍_水潤型", price: 1350.00, description: "產品介紹\n肌活肌底保濕基因，增加天然保濕因子(NMF)的數量。\n為肌膚注入智能保濕力，潤澤感從肌底20層透亮至肌膚表層。\n使用方法\n在精華及眼霜後使用。取出杏仁果大小的量，均勻塗抹在兩頰、前額及下巴。",address: ["台北市大同區承德路一段1號","台北市信義區松壽路11號","台北市大安區忠孝東路四段45號"],imageAddress: "https://img4.momoshop.com.tw/goodsimg/0004/540/468/4540468_B.jpg?t=1521907561"),
        Product(name: "植村秀 光燦新肌晶透乳液", price: 2400.00, description: "產品介紹\n光全新光燦新肌晶透乳液/乳霜，注入經典槐花萃取因子+獨家彈潤修復配方，細滑豐盈的質地立即為肌膚提供深層的滋潤、膨潤透亮。NEW 彈潤緊緻複合物植村秀研究中心獨家精萃西洋栗萃取及皇家蜂王膠，能強化肌膚緊緻力，協同膠原蛋白增生，重現年輕肌膚緊緻膨彈，看見光透，摸到年輕。\n使用方法\n取適量沿皮膚紋理由內至外輕柔塗抹臉、頸部。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://s.yimg.com/zp/MerchandiseImages/4119B61AE7-SP-5831968.jpg")]
    var medLotion = [
        Product(name: "innisfree濟州石榴活妍美膚乳", price: 750.00, description: "產品介紹\n直接於濟州石榴榨出的鮮石榴汁，含有5種有效成分，能有效幫助解決肌膚老化後發生的水分、活力、光澤、彈力、細紋等問題，幫助肌膚恢復健康。\n以濟州石榴鮮汁含有的鞣花酸成分，能幫助肌膚面對各式外部壓力，緩和老化跡象。培養肌膚自然防禦力，使肌膚維持健康，充滿活力。\n取源自於植物的角鯊烷成分，能形成肌膚護水膜，使肌膚滋潤柔滑。\n使用方法\n依使用順序，取出適當量均勻塗抹於臉部與脖子後，再輕輕推勻，幫助吸收。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://www.innisfree.com/tw/zh/upload/product/15850_l.png"),
        Product(name: "innisfree發酵豆能量煥顏活膚乳", price: 770.00, description: "產品介紹\n經4段高濃縮提煉的濟州大豆發酵原液，能提高肌膚彈力，賦予肌膚活力Q彈。\n含微粒子化的濟州大豆發酵油成分，不僅能幫助肌膚加強屏障，更能賦予肌膚健康潤澤。\n含源自植物的角鯊烯成分，能增提高肌膚保濕力，柔軟質地，能服貼於肌膚，並使肌膚完全吸收不黏膩。\n使用方法\n取適量內容物輕輕塗抹於臉部肌膚。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://dg9ugnb21lig7.cloudfront.net/uploads/review_image/1098447/_775x280_20170729181213.png"),
        Product(name: "Kiehl's 超進化全能精華霜", price: 2800.00, description: "產品介紹\n萃取3大精華液濃縮精萃注入抗老乳霜，讓乳霜同時擁有精華液的瞬間吸收力及乳霜的鎖水力，讓抗老效果更深入有效。\n獨家5效合1抗老配方，可同時淡化皺紋、粗糙等肌膚老化現象，抗老乳霜讓肌膚更緊實、保濕、細緻、平滑、緊緻。\n使用方法\n每日早晚於化妝水及精華液後使用，取適量抗老乳霜塗抹於清潔後的臉部及頸部。",address: ["台北市中正區忠孝西路一段66號","台北市大同區承德路一段1號","台北市大安區忠孝東路四段45號"],imageAddress: "https://dg9ugnb21lig7.cloudfront.net/uploads/product_image/55037/1/_250x250_55037_w_250xh_250xfar_C.jpg"),
        Product(name: "Kiehl's 冰河醣蛋白無油清爽凝凍", price: 1350.00, description: "產品介紹\n100%無油配方，內含來自極地的天然保濕成份，質地清爽不黏膩，好吸收，能瞬間為肌膚大量補水鎖水。\n針對台灣夏日清爽保濕需求與混和性肌膚所設計，利用獨家智慧型抗油光科技，保濕的同時還能全天抑制油光，全天清爽不見油光。\n可每天早晚使用，或當作妝前保濕打底，也可厚敷當晚安面膜使用。\n使用方法\n每日早晚於化妝水及精華液後，取適量均於塗抹於臉部。亦可當作妝前保濕打底，或厚敷當晚安面膜使用。",address: ["台北市中正區忠孝西路一段66號","台北市大同區承德路一段1號","台北市大安區忠孝東路四段45號"],imageAddress: "https://im1.book.com.tw/image/getImage?i=https://www.books.com.tw/img/N01/124/91/N011249110.jpg&v=5a290312&w=348&h=348"),
        Product(name: "SK-Ⅱ 晶緻活膚乳液", price: 2730.00, description: "產品介紹\n豐潤的活膚乳液能啟動肌膚的滋潤度，淡化皺紋，能維持肌膚水潤度，延緩肌膚老化。\n使用方法\n按壓1至2次於掌心，然後塗勻全臉及頸部。多使用一些分量於粗老痕跡明顯部位。於早晚精華液後使用。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://sk-ii-desktop-tw-cdn.azureedge.net/OP/img/collections/pitera-essentials/facial-lift-emulsion.jpg"),
        Product(name: "雅詩蘭黛 超能紅石榴微循環晚安凝霜", price: 2800.00, description: "產品介紹\n富含紅石榴超級能量成份，夜間密集調理肌膚，打造水潤。亦可作為晚安面膜使用，加強潤澤肌膚。\n使用方法\n取酌量塗抹於臉及頸部肌膚。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://dg9ugnb21lig7.cloudfront.net/uploads/product_image/70951/1/_250x250_70951_w_250xh_250xfar_C.jpg"),
        Product(name: "蘭芝 水酷肌因智慧保濕凝凍_水潤型", price: 1350.00, description: "產品介紹\n肌活肌底保濕基因，增加天然保濕因子(NMF)的數量。\n為肌膚注入智能保濕力，潤澤感從肌底20層透亮至肌膚表層。\n\n使用方法\n在精華及眼霜後使用。取出杏仁果大小的量，均勻塗抹在兩頰、前額及下巴。",address: ["台北市大同區承德路一段1號","台北市信義區松壽路11號","台北市大安區忠孝東路四段45號"],imageAddress: "https://img4.momoshop.com.tw/goodsimg/0004/540/468/4540468_B.jpg?t=1521907561"),
        Product(name: "Sisley 清新保濕面霜", price: 5300.00, description: "產品介紹\n清新保濕面霜為一款乳霜狀的保溼日霜。可有效深層滋潤及柔軟肌膚，給予肌膚清新和舒適感受。富含胺基酸的小黃瓜精華有助於強化肌膚且激發肌膚活力光澤，使用後半小時內提升肌膚水分。\n有效深層滋潤及柔軟肌膚，給予肌膚清新和舒適感受。\n使用方法\n可以作為日霜或晚霜使用，輕柔均勻地塗抹在充分洗淨的肌膚上。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://www.sisley-paris.com/zh-TW/media/catalog/product/cache/3/sisley_hd_image/9df78eab33525d08d6e5fb8d27136e95/sisley_hd_image/3473311268006.jpg")]
    var dryLotion = [
        Product(name: "innisfree 濟州寒蘭複合滋養乳", price: 800.00, description: "產品介紹\n比上一代含有更多抗老成分的「寒蘭肌活萃取物2.0™」，針對加速老化的肌膚彈性、皺紋、膚色暗沉與乾燥問題給予強力的防護。\n含有濟洲青豆的玻尿酸成分，有效維持肌膚的油水平衡。\n快速吸收，給予肌膚滋養的滋養乳。\n使用方法\n於化妝水後使用，取適量輕拍臉部與頸部使產品吸收。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://www.innisfree.com/tw/zh/upload/product/26681_l.png"),
        Product(name: "innisfree濟州熔岩海洋水調理乳", price: 850.00, description: "產品介紹\n含特殊礦物質成分的熔岩海水所特有的水分能量，能賦活肌膚、帶來抗齡效果。\n以高效水分防護，強化濟州熔岩海水含3種水因子及天然保濕因子活力，帶來彈力緊緻保養效果。\n以豐富的水感迅速供給肌膚水分，全面整頓肌膚，並能幫助吸收化妝水。\n使用方法\n於精華液下一階段，取適當量塗抹於臉部及脖子部位並輕輕按摩以幫助吸收。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://dg9ugnb21lig7.cloudfront.net/uploads/product_image/76818/1/_250x250_76818.jpg"),
        Product(name: "Kiehl’s 超能量抗痕彈力霜", price: 2300.00, description: "產品介紹\n內含超能量晶礦元素，能有效強化因年紀增長或生活環境等外在刺激，所造成的肌膚老化等彈力流失現象。\n實驗證實，使用後肌膚彈力顯著提升，淡化細紋，緊緻毛孔，讓肌膚更澎潤、更平滑、更彈嫩。\n獨特霜淇淋質地，以指腹輕按畫圓後立即轉化為水狀，好吸收不黏膩。\n使用方法\n每日早晚於化妝水及精華液後使用，取適量塗抹於清潔後的臉部及頸部。",address: ["台北市中正區忠孝西路一段66號","台北市大同區承德路一段1號","台北市大安區忠孝東路四段45號"],imageAddress: "https://dg9ugnb21lig7.cloudfront.net/uploads/product_image/51226/1/_250x250_51226_w_250xh_250xfar_C.jpg"),
        Product(name: "Kiehl's 冰河醣蛋白無油清爽凝凍", price: 1350.00, description: "產品介紹\n保濕霜富含萃取自極地的冰河醣蛋白，提供肌膚水潤柔嫩的保濕效果。\n更添加親膚性植物果油，讓保濕霜質地輕盈好吸收，補水保濕的同時也不怕造成肌膚負擔，完全不黏膩。\n-2019升級版成分更溫和、不刺激，不含酒精、不含PARABEN類防腐劑，敏感肌也適用！\n使用方法\n每日早晚於化妝水或精華液後使用，取約3-5顆米粒大小的量，點在臉頰與下巴部位，由臉頰開始塗抹再帶到T字部位。",address: ["台北市中正區忠孝西路一段66號","台北市大同區承德路一段1號","台北市大安區忠孝東路四段45號"],imageAddress: "https://im1.book.com.tw/image/getImage?i=https://www.books.com.tw/img/N01/124/91/N011249110.jpg&v=5a290312&w=348&h=348"),
        Product(name: "蘭芝 水酷肌因智慧保濕修護霜_水潤型", price: 1350.00, description: "產品介紹\n如奶油般豐厚的膏狀觸感。\n肌膚保濕屏障複合物™，含14種組成肌膚天然保濕屏障的主要成分，能強化肌膚天然的保護膜，讓肌膚即使在極端惡劣的環境中，依舊能維持健康水潤感。\n使用方法\n取綠豆大小於掌心，用掌心溫度溫熱修護霜，再輕輕服貼按壓全臉至吸收。乾性/極乾性肌膚使用者，保養時請需避免摩擦刺激到肌膚，請用輕按壓的方式加強保養品的滲透吸收。",address: ["台北市大同區承德路一段1號","台北市信義區松壽路11號","台北市大安區忠孝東路四段45號"],imageAddress: "https://a.ecimg.tw/items/DDBL0QA9007GD9P/000001_1485231106.jpg"),
        Product(name: "植村秀 全能奇蹟金萃乳液", price: 3500.00, description: "產品介紹\n黃金精油微粒，將經由完整包覆於微粒中，打造輕盈水感靠老精華水質地，為肌膚修護滋養，同時深度保濕。\n肌底賦活緊顏科技，深度緊緻肌膚，恢復彈性及肌膚完美狀態。\n使用方法\n取約3-5顆米粒大小的量，點在臉頰與下巴部位，由臉頰開始塗抹再帶到T字部位。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://shoplineimg.com/5a8293389f9a4f3b09000791/5b616d588d1db9566300c241/400x.png"),
        Product(name: "Sisley 清新保濕面霜", price: 5300.00, description: "產品介紹\n清新保濕面霜為一款乳霜狀的保溼日霜。可有效深層滋潤及柔軟肌膚，給予肌膚清新和舒適感受。富含胺基酸的小黃瓜精華有助於強化肌膚且激發肌膚活力光澤，使用後半小時內提升肌膚水分。\n有效深層滋潤及柔軟肌膚，給予肌膚清新和舒適感受。\n使用方法\n可以作為日霜或晚霜使用，輕柔均勻地塗抹在充分洗淨的乾燥肌膚上。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://www.sisley-paris.com/zh-TW/media/catalog/product/cache/3/sisley_hd_image/9df78eab33525d08d6e5fb8d27136e95/sisley_hd_image/3473311268006.jpg")]
    
    var oilCream = [
        Product(name: "innisfree 綠茶籽保濕精華", price: 920.00, description: "產品介紹\n開啟「補水通道」為肌膚深層供給水分，幫助後續保養品滲透吸收的明星前導精華。\n鮮榨綠茶水2.0供給肌膚水分+綠茶籽油鎖住水分、強化肌膚屏障。\n清輕柔延展、立即滲透！為清潔後乾燥的肌膚補充所需的水分，打造水嫩、透亮的肌膚。\n使用方法\n潔顏後第一道程序使用，取適量沿皮膚紋理由內至外輕柔塗抹臉、頸部。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://www.innisfree.com/tw/zh/upload/product/25421_l.jpg"),
        Product(name: "Kiehl's 12.5 超能雙C精華", price: 2650.00, description: "產品介紹\n有專櫃最高濃度10.5左型C和2%維他命C糖苷的維他命C雙精萃和玻尿酸的全能抗老精華液。\n毛孔緊緻精華，有效撫平細紋、緊緻毛孔，抗老抗皺同時改善暗沉粗糙，使肌膚更透亮、平滑、細緻、膨潤、彈嫩，年輕看得見、摸得到！\n使用方法\n於化妝水後，取適量抗老精華液均勻塗抹於全臉及頸部。使用時如有溫熱感是正常現象。",address: ["台北市中正區忠孝西路一段66號","台北市大同區承德路一段1號","台北市大安區忠孝東路四段45號"],imageAddress: "https://dg9ugnb21lig7.cloudfront.net/uploads/product_image/84600/1/_250x250_84600.jpg"),
        Product(name: "蘭芝 水酷肌因保濕精華(清爽版)", price: 1600.00, description: "產品介紹\n綠蔬礦物精露，特選植蔬，把肌膚水份補好補滿。\n沁涼水乳質地，肌膚瞬間感受到水感，立即補足肌膚保濕問題。\n密封鎖水鍊，補滿水潤成分，肌膚持續保濕不打烊。\n使用方法\n使用完化妝水或乳液後，取適量均勻塗抹在兩頰、額頭及下巴。",address: ["台北市大同區承德路一段1號","台北市信義區松壽路11號","台北市大安區忠孝東路四段45號"],imageAddress: "https://www.laneige.com/tw/zh/laneige-pim-img/product/water-bank-hydro-essence-70ml/water-bank-hydro-essence-70ml-01.png"),
        Product(name: "植村秀 新．光燦新肌粹", price: 3300.00, description: "產品介紹\n高濃度天然植萃 恢復肌膚彈力，萃取自山毛櫸、鉤藤屬等天然植物，協同膠原蛋白增生，恢復肌膚彈力。\n保濕 打造全天光透，內含灰樹花萃取及玻尿酸，提供高效保濕，深層滋潤給予肌膚輕透的舒適呵護，打造柔滑自然的年輕光透。\n使用方法\n使用完化妝水或乳液後，取適量均勻塗抹在兩頰、額頭及下巴。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://shoplineimg.com/5a8293389f9a4f3b09000791/5b61716972fdc046a100118f/800x.png?"),
        Product(name: "Sisley 極致完美毛孔緊緻精華", price: 6300.00, description: "產品介紹\n極致完美毛孔緊緻精華是一款多功效針對肌膚作改善、預防及修護，讓肌膚毛孔緊緻的精華乳。適合各年齡使用，能有效調理肌膚油脂分泌、緊緻毛孔，軟化肌膚角質層，平滑肌膚紋理。\n有效改善、預防、修護，讓肌膚毛孔緊緻的精華乳，長期使用肌膚表面加平滑，打造青春緊緻的美肌。\n使用方法\n早上與夜間使用，均勻塗抹於清潔過後的臉部肌膚，亦可單獨使用或搭配其他肌膚保養品項一起使用。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://www.sisley-paris.com/zh-TW/media/catalog/product/cache/3/sisley_hd_image/9df78eab33525d08d6e5fb8d27136e95/sisley_hd_image/3473311450005.jpg")]
    var medCream = [
        Product(name: "innisfree 濟州石榴活妍美膚精華", price: 1100.00, description: "產品介紹\n直接於濟州石榴榨出的鮮石榴汁，含有5種有效成分，能有效幫助解決肌膚老化後發生的水分、活力、光澤、彈力、細紋等問題，幫助肌膚恢復健康。\n以濟州石榴鮮汁含有的鞣花酸成分，能幫助肌膚面對各式外部壓力，緩和老化跡象。培養肌膚自然防禦力，使肌膚維持健康，充滿活力。\n含有天然成分，可加強肌膚防禦力，腺苷成分能有效幫助膠原蛋白合成，促進肌膚彈與光澤。\n使用方法\n依使用順序，取出適當量均勻塗抹於臉部與脖子後，再輕輕推勻，幫助吸收。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://www.innisfree.com/tw/zh/upload/product/15852_l.png"),
        Product(name: "Kiehl's 紫鳶青春肌活露", price: 1750.00, description: "產品介紹\n水狀精華質地，分子小滲透快，清爽好吸收。\n能有改善肌膚暗沉、粗糙、失去彈性等老化現象，讓肌膚更年輕透亮、水潤平滑。\n亦可當前導精華使用，可加速代謝老廢角質，讓後續保養品更好吸收。\n使用方法\n於化妝水後，精華液前使用，取適量均勻塗抹於臉部及頸部，早晚皆可使用。 亦可在化妝水前當前導精華使用，讓後續保養品更好吸收、效果加倍。",address: ["台北市中正區忠孝西路一段66號","台北市大同區承德路一段1號","台北市大安區忠孝東路四段45號"],imageAddress: "https://dg9ugnb21lig7.cloudfront.net/uploads/product_image/68222/1/_250x250_68222_w_250xh_250xfar_C.jpg"),
        Product(name: "SK-Ⅱ R.N.A.超肌能緊緻活膚霜（輕盈版）", price: 3480.00, description: "產品介紹\n以我們屢獲殊榮¹的輕盈乳霜，為你的肌膚源源注入年輕光采。蘊含豐富的修護成分，超肌能緊緻活膚霜（輕盈版）能讓肌膚迅速吸收，提升肌膚柔軟度及彈性，令肌膚綻放年輕健康的動人光采。\n使用方法\n取出約一元硬幣大小的 R.N.A.超肌能緊緻活膚霜（輕盈版），以指腹將活膚霜點在前額、臉頰及下巴位置，從中央向外輕輕推開至全臉。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://sk-ii-desktop-tw-cdn.azureedge.net/OP/img/product/rna-power-airy-milky-lotion/product/01-desktop-rna-airy-front.jpg"),
        Product(name: "雅詩蘭黛 CP+R抗皺緊緻精華", price: 4500.00, description: "產品介紹\n採用創新突破的CPR-75科技™，讓肌膚光滑無痕、年輕緊緻，撫平細紋並緊緻臉部線條，內外豐潤肌膚。\n使用方法\n每日早晚於化妝水和原生露後使用。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://www.esteelauder.com.tw/media/export/cms/products/558x768/el_sku_Y6JM01_558x768_0.jpg"),
        Product(name: "倩碧 智慧科研修護精華", price: 2700.00, description: "產品介紹\n我們的智慧精華了解你肌膚的需求，能客製化修護看得見與看不見的損傷，適合所有年齡、所有種族。\n能針對多項困擾作用，包括：淡化細紋與皺紋、緊實與拉提、淡斑並均勻膚色、改善光澤與膚質。\n一天使用兩次，早晚各一次，於倩碧三步驟後使用，壓 2 次精華液於手心，塗抹於全臉，搭配向上提拉的動作。將剩餘的精華液塗抹於頸部。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://s.yimg.com/zp/images/87144C8999532C4532451C67CCD6C994C21A1A8F"),
        Product(name: "蘭芝 純淨保濕精華", price: 1150.00, description: "產品介紹\n水天然的荔枝萃取，舒緩因外在環境刺激造成的肌膚不適，賦予抗氧化力，將保濕效果推進深入肌底。\n創新空氣慕斯型態，透過細微分子被肌膚完全吸收。\n全系列通過低敏度測試、含有４不天然堅持(油脂/動物成分/人工色素/三乙醇胺)，成份單純，僅有10種成份，並且通過皮膚科測試及低敏測試。\n使用方法\n取適量使用於化妝水後，自臉部肌膚中央往外輕抹，利用雙掌輕拍兩頰/前額與下巴。",address: ["台北市大同區承德路一段1號","台北市信義區松壽路11號","台北市大安區忠孝東路四段45號"],imageAddress: "https://img4.momoshop.com.tw/goodsimg/0004/873/038/4873038_B.jpg?t=1524043621"),
        Product(name: "Sisley 抗皺活膚極光精華", price: 14900.00, description: "產品介紹\n抗皺活膚極光精華是一款針對提升肌膚明亮光采所設計的抗老產品，能使膚色看起來更均勻、光滑、耀眼更年輕。\n使用後展現效果，能使膚色更明亮耀眼、清新、晶瑩剔透，看起來更年輕。\n使用方法\n早晚滴2-3滴使用於臉部、頸部與前胸肌膚。為達到最佳護膚效果，請避免肌膚在無防護的狀態下接觸陽光。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://im2.book.com.tw/image/getImage?i=https://www.books.com.tw/img/N01/011/02/N010110273.jpg&v=4fc4556e&w=348&h=348")]
    var dryCream = [
        Product(name: "innisfree 濟州寒蘭複合滋養精華", price: 1120.00, description: "產品介紹\n比上一代含有更多抗老成分的「寒蘭肌活萃取物2.0™」，針對加速老化的肌膚彈性、皺紋、膚色暗沉與乾燥問題給予強力的防護。\n含有濟洲青豆的玻尿酸成分，有效給予肌膚水分與光彩。\n含有天然的高分子形成的防禦網，完整包覆肌膚，使肌膚充滿彈性。\n使用方法\n於潔膚後按壓1-2下於化妝水後使用，取適量輕拍臉部與頸部使產品吸收。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://img3.momoshop.com.tw/goodsimg/0006/027/621/6027621_R.jpg?t=1543352942"),
        Product(name: "innisfree 濟州熔岩海洋水保溼精華", price: 1100.00, description: "產品介紹\n含特殊礦物質成分的熔岩海水所特有的水分能量，能賦活肌膚、帶來抗齡效果。\n以高效水分防護，強化濟州熔岩海水含3種水因子及天然保濕因子活力，帶來彈力緊緻保養效果。\n於塗抹瞬間有如水滴滲透般瞬間清爽，能在肌膚快速吸收，迅速供給水分，同繩更能帶給肌膚能量，使肌膚達到保濕細緻。\n使用方法\n於精華液階段，按壓1~2下，塗抹於全臉並輕輕按摩以幫助吸收。",address: ["台北市館前路6-2號","台北市大安區忠孝東路4段151號","台北市信義區松壽路11號"],imageAddress: "https://img1.momoshop.com.tw/goodsimg/0005/910/057/5910057_B.jpg?t=1533637028"),
        Product(name: "Kiehl's 超彈潤青春水精華", price: 2000.00, description: "產品介紹\n獨特轉水質地，能快速釋放高含量保濕精華，加速肌膚吸收。\n不只長效保濕肌膚，保濕精華還能有效對抗改善因乾燥而造成的細紋等問題。\n使用方法\n於化妝水、前導精華液後使用，取適量保濕精華均勻塗抹於臉部及頸部，早晚皆可使用。",address: ["台北市中正區忠孝西路一段66號","台北市大同區承德路一段1號","台北市大安區忠孝東路四段45號"],imageAddress: "https://media.karousell.com/media/photos/products/2017/10/06/kiehls_50ml_1507295064_0a53f9f9.jpg"),
        Product(name: "SK-Ⅱ 肌源新生特潤精華霜", price: 4750.00, description: "產品介紹\n這瓶效果出眾的抗老精華面霜，質地濃稠，蘊含Stem-Acanax、天然酵母Pitera™及比肌源新生活膚霜提升滋潤成分。為肌膚提供深層的滋潤，能對抗因衰老而出現的皺紋、乾燥及不夠緊緻的問題。\n使用方法\n取一粒珍珠分量，點在前額、面頰、下巴等部位，以手推開並輕輕由下而上按摩全臉。於早晚精華液後使用。如需獲得更出色的緊緻效果，可於肌源新生活膚霜後使用。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://sk-ii-desktop-tw-cdn.azureedge.net/OP/img/collections/anti-aging/stempower-rich-cream.jpg"),
        Product(name: "雅詩蘭黛 Pro極速緊緻肌密全能精華", price: 4300.00, description: "產品介紹\n全面收緊臉部輪廓，雙頰更緊實、下巴更有型，極速重返年輕緊實肌。\n使用方法\n早晚化妝水後及滋潤品前使用，請避開眼睛周圍。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://www.esteelauder.com.tw/media/export/cms/products/558x768/el_sku_RY9801_558x768_0.jpg"),
        Product(name: "倩碧 水磁場微分子保濕精華", price: 1700.00, description: "產品介紹\n創新的極輕爽凝露配方與濃縮抗氧化成分，立即提供 179% 的保濕效果。\n運用全新雙重作用的液體圓球科技 (Liquid-Sphere™Technology）及超保濕蓄水科技(Moisture Holding Super-Matrix)，讓每一滴精華都可以層層深滲透，強化肌膚保濕力，使用24小時後，持續讓肌膚變得更保濕 61%。\n使用方法\n早晚兩次塗擦於洗淨後肌膚。在使用化妝水後，按壓2-3次產品，均勻地塗擦於全臉。再加上水磁場凝膠效果加倍。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://im1.book.com.tw/image/getImage?i=https://www.books.com.tw/img/N01/112/48/N011124858.jpg&v=59083795&w=348&h=348"),
        Product(name: "蘭芝 水酷肌因保濕精華(水潤版)", price: 1600.00, description: "產品介紹\n綠蔬礦物精露，特選植蔬，把肌膚水份補好補滿。\n沁涼水乳質地，肌膚瞬間感受到水感，立即補足肌膚保濕問題。\n密封鎖水鍊，補滿水潤成分，肌膚持續保濕不打烊。\n使用方法\n使用完化妝水或乳液後，取適量均勻塗抹在兩頰、額頭及下巴。",address: ["台北市大同區承德路一段1號","台北市信義區松壽路11號","台北市大安區忠孝東路四段45號"],imageAddress: "https://www.laneige.com/tw/zh/laneige-pim-img/product/water-bank-moisture-essence-70ml/water-bank-moisture-70ml-01.png"),
        Product(name: "Sisley 抗皺活膚極光精華", price: 14900.00, description: "產品介紹\n抗皺活膚極光精華是一款針對提升肌膚明亮光采所設計的抗老產品，能使膚色看起來更均勻、光滑、耀眼更年輕。\n使用後展現效果，能使膚色更明亮耀眼、清新、晶瑩剔透，看起來更年輕。\n使用方法\n早晚滴2-3滴使用於臉部、頸部與前胸肌膚。為達到最佳護膚效果，請避免肌膚在無防護的狀態下接觸陽光。",address: ["台北市中正區忠孝西路一段66號","台北市大安區忠孝東路四段45號","台北市信義區松壽路11號"],imageAddress: "https://im2.book.com.tw/image/getImage?i=https://www.books.com.tw/img/N01/011/02/N010110273.jpg&v=4fc4556e&w=348&h=348")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let skinType = skinType{
        }
        if let productType = productType{
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if skinType == "乾性"{
            if productType == "化妝水"{
                return dryToner.count
            }
            else if productType == "乳液"{
                return dryLotion.count
            }
            else{
                return dryCream.count
            }
        }
        else if skinType == "中性"{
            if productType == "化妝水"{
            return medToner.count
        }
        else if productType == "乳液"{
            return medLotion.count
        }
        else{
            return medCream.count
            }
        }
        else{
            if productType == "化妝水"{
                return oilToner.count
            }
            else if productType == "乳液"{
                return oilLotion.count
            }
            else{
                return oilCream.count
            }
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as! productTableViewCell
        
        if skinType == "乾性"{
            if productType == "化妝水"{
                let product = dryToner[indexPath.row]
                cell.nameLabel.text = product.name
                cell.photoImageView.image = UIImage(named: product.name)
                return cell
            }
            else if productType == "乳液"{
                let product = dryLotion[indexPath.row]
                cell.nameLabel.text = product.name
                cell.photoImageView.image = UIImage(named: product.name)
                return cell
            }
            else{
                let product = dryCream[indexPath.row]
                cell.nameLabel.text = product.name
                cell.photoImageView.image = UIImage(named: product.name)
                return cell
            }
        }
        else if skinType == "中性"{
            if productType == "化妝水"{
                let product = medToner[indexPath.row]
                cell.nameLabel.text = product.name
                cell.photoImageView.image = UIImage(named: product.name)
                return cell
            }
            else if productType == "乳液"{
                let product = medLotion[indexPath.row]
                cell.nameLabel.text = product.name
                cell.photoImageView.image = UIImage(named: product.name)
                return cell
            }
            else{
                let product = medCream[indexPath.row]
                cell.nameLabel.text = product.name
                cell.photoImageView.image = UIImage(named: product.name)
                return cell
            }
        }
        else{
            if productType == "化妝水"{
                let product = oilToner[indexPath.row]
                cell.nameLabel.text = product.name
                cell.photoImageView.image = UIImage(named: product.name)
                return cell
            }
            else if productType == "乳液"{
                let product = oilLotion[indexPath.row]
                cell.nameLabel.text = product.name
                cell.photoImageView.image = UIImage(named: product.name)
                return cell
            }
            else{
                let product = oilCream[indexPath.row]
                cell.nameLabel.text = product.name
                cell.photoImageView.image = UIImage(named: product.name)
                return cell
            }
        }
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    @IBAction func unwindToproductTableView(segue: UIStoryboardSegue){
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let controller = segue.destination as? productDetialViewController
        if let row = tableView.indexPathForSelectedRow?.row {
            
            if skinType == "乾性"{
                if productType == "化妝水"{
                    let product = dryToner[row]
                    controller?.product = product
                }
                else if productType == "乳液"{
                    let product = dryLotion[row]
                    controller?.product = product
                }
                else{
                    let product = dryCream[row]
                    controller?.product = product
                }
            }
            else if skinType == "中性"{
                if productType == "化妝水"{
                    let product = medToner[row]
                    controller?.product = product
                }
                else if productType == "乳液"{
                    let product = medLotion[row]
                    controller?.product = product
                }
                else{
                    let product = medCream[row]
                    controller?.product = product
                }
            }
            else{
                if productType == "化妝水"{
                    let product = oilToner[row]
                    controller?.product = product
                }
                else if productType == "乳液"{
                    let product = oilLotion[row]
                    controller?.product = product
                }
                else{
                    let product = oilCream[row]
                    controller?.product = product
                }
            }
        }
    }
    

}
