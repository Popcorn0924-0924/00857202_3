//
//  struct.swift
//  00857202_3
//
//  Created by User02 on 2020/10/25.
//
import Foundation
struct Movie_Marvel{
let id:String
let name:String

static let DemoPenquin=Movie_Marvel(id:"0",name:"美國隊長1")
}
struct Character{
let id:String
let name:String
let ename:String
let intro:String

static let DemoPenquin=Character(id:"0",name:"國王企鵝",ename:"Aptenodytes patagonicus",intro:"test")
}
struct location{
    var name : String
    var ename : String
    var intro: String
    var latitude : Double
    var longitude : Double

}
let MarvelPlace : [location] = [
    location(name: "亞特蘭大",ename:"美國", intro:"復仇者系列電影中許多大戰都是在紐約開打，不過實際拍攝時在亞特蘭大取的景反而遠遠多過紐約，其中皮埃蒙特公園（Piedmont Park）、市中心和 Five Points MARTA車站都有很多幕戲，《復仇者聯盟4》裡的總部，也被眼尖的網友發現，是位在亞特蘭大附近的三一重工美國總部。\n除了是復仇者聯盟的取景地，亞特蘭大作為美國的「新南方之都」，是可口可樂等許多跨國企業的總部，貨出去人進來以後，發了大財當然要有些地方給大家逛逛啦！這裡的室內景點有全美最大的水族館、可口可樂博物館和CNN總部，如果喜歡戶外活動，也有奧林匹克紀念公園和石頭山公園等著你。", latitude: 33.750385, longitude: -84.384911),
    location(name:"巴德堡",ename:"義大利", intro:"回到年代久遠的《復仇者聯盟2》，在一開始突擊九頭蛇基地，奪取寶石再順便收服緋紅女巫和快銀的片段中，作為的九頭蛇基地的就是位在義大利奧斯塔地區，坐落在阿爾卑斯山腳下的的巴爾德堡（Forte di Bard／Fortress of Bard）。現實中的巴爾德堡在整修後，目前兼俱了博物館和表演廳，部分成堡也開放遊客參觀，外圍的村莊則是瀰漫著中世紀歐洲鄉村的氛圍，街道上大量使用石材作為原料，逛起來也是超有風味的。", latitude: 45.608282, longitude: 7.744642),
    location(name:"加德滿都",ename:"尼泊爾", intro:"奇異博士本人為了治療雙手，啟程尋找東方神秘力量，來到了尼泊爾的加德滿都。現實中的加德滿都雖然沒有巫師和魔法，但神聖莊嚴的氣息卻絲毫不亞於電影裡的樣貌，雖然貧窮精神上卻相當富足，絕對可說是屬於神靈的國度。 除此之外，尼泊爾也是健行愛好者心目中必去的聖地，由於整個國家幾乎都坐落在喜馬拉雅山腳下，造就了超多令人屏息的美景，也被2017年的《孤獨星球》選入最有價值旅遊地和最佳旅行國家TOP 10清單，不管你追求的是美麗山景、莊嚴的宗教氣息還是一場畢生難忘的旅程，來尼泊爾準沒錯！", latitude: 27.705156,  longitude: 85.305705),
    location(name:"博科特農場",ename:"美國", intro:"雖然是大多數人都沒印象的地方，但是講到《復仇者聯盟3》最後和薩諾斯軍團決戰的瓦干達草原，你絕對有印象！作為黑豹的家鄉，瓦干達在後期的系列電影中是對抗薩諾斯的主力部隊，不過這裡的拍攝地點其實是在美國喬治亞州費爾伯恩（Fairburn）的博科特農場（Bouckaert Farms），並不是在非洲哦！", latitude: 33.655216, longitude:  -84.673554),
    location(name:"昆思博羅大橋",ename:"美國", intro:"還記得《復仇者聯盟3》裡，小蜘蛛人湯姆‧霍蘭德在校車上感應到宇宙戰艦來襲，手毛全部翹起來那一幕嗎？當時的校車就是開在紐約的昆思博羅大橋（Queensboro Bridge）上！", latitude: 40.756759, longitude:  -73.954127),
    location(name:"愛丁堡",ename:"英國",  intro:"同樣是在《復仇者聯盟3》，緋紅女巫和幻視被薩諾斯的手下偷襲，一陣激戰之後，美國隊長帶著黑寡婦和獵鷹前來救援的戲，拍攝場景則是由愛丁堡全包，知名的科伯恩街（Cockburn street）、聖吉爾斯大教堂（St. Giles Cathedral）、皇家英里大道（Royal Mile）和威瓦利車站（Waverley Railway Station）全部入選。現實中的愛丁堡就像電影中一樣，充滿了道地的歐洲風格（畢竟是在英國嘛），除了復仇者聯盟以外，也曾經被《哈利波特》選為拍攝地點，就知道這裡到底有多美！而且逛完市區，還可以去看看蘇格蘭人間淨土般的高原、峽谷、小村莊和尼斯湖，不過蘇格蘭這裡的氣候比較冷，夏天會是更適合來訪的季節。", latitude: 55.950801 , longitude: -3.202250),
    location(name:"聖艾慕斯",ename:"英國" ,intro:"熱騰騰的《復仇者聯盟4》裡，浩克和火箭浣熊曾經前往新阿斯嘉找索爾，新阿斯嘉的場景就是在蘇格蘭東南部的小漁村聖艾慕斯（St. Abbs）拍攝的。來到這裡一定要看看索爾和女武神欣賞的海景，也不要錯過蘇格蘭風味的啤酒啊！", latitude: 55.920284,longitude:  -2.140169 ),
    location( name:"巴拿威梯田",ename:"菲律賓", intro:"《復仇者聯盟3》的最後，薩諾斯看著夕陽的一幕，不知道讓多少人久久不能自己。整個薩諾斯農舍其實都取景自菲律賓的巴拿威梯田（Banaue Rice Terraces），這裡不只被列為世界遺產，甚至還被印在菲律賓當地的貨幣上，有緣前往呂宋島的旅客真的是萬萬別錯過和薩諾斯一起看夕陽的機會啊！", latitude: 16.934694 , longitude: 121.135320)
]
    
let Aptenodytes = [
Character(id:"1",name:"亞特蘭大",ename:"美國",intro:"復仇者系列電影中許多大戰都是在紐約開打，不過實際拍攝時在亞特蘭大取的景反而遠遠多過紐約，其中皮埃蒙特公園（Piedmont Park）、市中心和 Five Points MARTA車站都有很多幕戲，《復仇者聯盟4》裡的總部，也被眼尖的網友發現，是位在亞特蘭大附近的三一重工美國總部。\n除了是復仇者聯盟的取景地，亞特蘭大作為美國的「新南方之都」，是可口可樂等許多跨國企業的總部，貨出去人進來以後，發了大財當然要有些地方給大家逛逛啦！這裡的室內景點有全美最大的水族館、可口可樂博物館和CNN總部，如果喜歡戶外活動，也有奧林匹克紀念公園和石頭山公園等著你。"),
Character(id:"2",name:"巴德堡",ename:"義大利",intro:"回到年代久遠的《復仇者聯盟2》，在一開始突擊九頭蛇基地，奪取寶石再順便收服緋紅女巫和快銀的片段中，作為的九頭蛇基地的就是位在義大利奧斯塔地區，坐落在阿爾卑斯山腳下的的巴爾德堡（Forte di Bard／Fortress of Bard）。現實中的巴爾德堡在整修後，目前兼俱了博物館和表演廳，部分成堡也開放遊客參觀，外圍的村莊則是瀰漫著中世紀歐洲鄉村的氛圍，街道上大量使用石材作為原料，逛起來也是超有風味的。"),
Character(id:"3",name:"加德滿都",ename:"尼泊爾",intro:"奇異博士本人為了治療雙手，啟程尋找東方神秘力量，來到了尼泊爾的加德滿都。現實中的加德滿都雖然沒有巫師和魔法，但神聖莊嚴的氣息卻絲毫不亞於電影裡的樣貌，雖然貧窮精神上卻相當富足，絕對可說是屬於神靈的國度。 除此之外，尼泊爾也是健行愛好者心目中必去的聖地，由於整個國家幾乎都坐落在喜馬拉雅山腳下，造就了超多令人屏息的美景，也被2017年的《孤獨星球》選入最有價值旅遊地和最佳旅行國家TOP 10清單，不管你追求的是美麗山景、莊嚴的宗教氣息還是一場畢生難忘的旅程，來尼泊爾準沒錯！"),
Character(id:"4",name:"博科特農場",ename:"美國",intro:"雖然是大多數人都沒印象的地方，但是講到《復仇者聯盟3》最後和薩諾斯軍團決戰的瓦干達草原，你絕對有印象！作為黑豹的家鄉，瓦干達在後期的系列電影中是對抗薩諾斯的主力部隊，不過這裡的拍攝地點其實是在美國喬治亞州費爾伯恩（Fairburn）的博科特農場（Bouckaert Farms），並不是在非洲哦。"),
Character(id:"5",name:"昆思博羅大橋",ename:"美國",intro:"還記得《復仇者聯盟3》裡，小蜘蛛人湯姆‧霍蘭德在校車上感應到宇宙戰艦來襲，手毛全部翹起來那一幕嗎？當時的校車就是開在紐約的昆思博羅大橋（Queensboro Bridge）上！"),
Character(id:"6",name:"愛丁堡",ename:"英國",intro:"同樣是在《復仇者聯盟3》，緋紅女巫和幻視被薩諾斯的手下偷襲，一陣激戰之後，美國隊長帶著黑寡婦和獵鷹前來救援的戲，拍攝場景則是由愛丁堡全包，知名的科伯恩街（Cockburn street）、聖吉爾斯大教堂（St. Giles Cathedral）、皇家英里大道（Royal Mile）和威瓦利車站（Waverley Railway Station）全部入選。現實中的愛丁堡就像電影中一樣，充滿了道地的歐洲風格（畢竟是在英國嘛），除了復仇者聯盟以外，也曾經被《哈利波特》選為拍攝地點，就知道這裡到底有多美！而且逛完市區，還可以去看看蘇格蘭人間淨土般的高原、峽谷、小村莊和尼斯湖，不過蘇格蘭這裡的氣候比較冷，夏天會是更適合來訪的季節。"),
Character(id:"7",name:"聖艾慕斯",ename:"英國",intro:"熱騰騰的《復仇者聯盟4》裡，浩克和火箭浣熊曾經前往新阿斯嘉找索爾，新阿斯嘉的場景就是在蘇格蘭東南部的小漁村聖艾慕斯（St. Abbs）拍攝的。來到這裡一定要看看索爾和女武神欣賞的海景，也不要錯過蘇格蘭風味的啤酒啊！"),
Character(id:"8",name:"巴拿威梯田",ename:"菲律賓",intro:"《復仇者聯盟3》的最後，薩諾斯看著夕陽的一幕，不知道讓多少人久久不能自己。整個薩諾斯農舍其實都取景自菲律賓的巴拿威梯田（Banaue Rice Terraces），這裡不只被列為世界遺產，甚至還被印在菲律賓當地的貨幣上，有緣前往呂宋島的旅客真的是萬萬別錯過和薩諾斯一起看夕陽的機會啊！")
]
let movie = [
    Movie_Marvel(id:"1",name:"美國隊長1"),
    Movie_Marvel(id:"2",name:"驚奇隊長"),
    Movie_Marvel(id:"3",name:"鋼鐵人1"),
    Movie_Marvel(id:"4",name:"鋼鐵人2"),
    Movie_Marvel(id:"5",name:"雷神索爾"),
    Movie_Marvel(id:"6",name:"復仇者聯盟1"),
    Movie_Marvel(id:"7",name:"鋼鐵人3"),
    Movie_Marvel(id:"8",name:"雷神2"),
    Movie_Marvel(id:"9",name:"美國隊長2"),
    Movie_Marvel(id:"10",name:"星際特攻隊"),
    Movie_Marvel(id:"11",name:"星際異攻隊2"),
    Movie_Marvel(id:"12",name:"復仇者聯盟2：奧創紀元"),
    Movie_Marvel(id:"13",name:"蟻人"),
    Movie_Marvel(id:"14",name:"美國隊長3"),
    Movie_Marvel(id:"15",name:"蜘蛛人：返校日"),
    Movie_Marvel(id:"16",name:"奇異博士"),
    Movie_Marvel(id:"17",name:"黑豹"),
    Movie_Marvel(id:"18",name:"雷神2：諸神黃昏"),
    Movie_Marvel(id:"19",name:"蟻人與黃蜂女"),
    Movie_Marvel(id:"20",name:"復仇者聯盟3：無限之戰"),
    Movie_Marvel(id:"21",name:"復仇者聯盟4：終局之戰")
]
let PicIcon = [
    Movie_Marvel(id:"p1",name:"美國隊長1"),
    Movie_Marvel(id:"p2",name:"驚奇隊長"),
    Movie_Marvel(id:"p3",name:"鋼鐵人1"),
    Movie_Marvel(id:"p4",name:"鋼鐵人2"),
    Movie_Marvel(id:"p5",name:"雷神索爾"),
    Movie_Marvel(id:"p6",name:"復仇者聯盟1"),
    Movie_Marvel(id:"p7",name:"鋼鐵人3"),
    Movie_Marvel(id:"p8",name:"雷神2"),
    Movie_Marvel(id:"p9",name:"美國隊長2"),
    Movie_Marvel(id:"p10",name:"星際特攻隊"),
    
]
