;////////////四条 華織 季節の手紙////////////
;概要
;＠名無しさん１
;△基本一回きりでいいです。
;◎コンセプト お見合い前は、素っ気ない。女慣れの部分ははじめから入っている最初の手紙でok
;◎お見合い後でフレンドリーなものに変化
;お見合い後は短いながらも手紙の内容は豊富など 届かない時期の分は飛ばして下さい。
;判定お見合い前後があります。
;判定イベント6前後があります。家族について
;////////////判定スクリプトの案////////////
;【１】出したときを判定する？
;【２】出したときは判定しない、もらったときを判定する？
;【３】2パターンある手紙は1パターンをみたら、その1パターンのイベントが終わります。
;しかし、2パターン目については終わらない。両方見た場合は終わり。
;詳細案
;お見合い前に返事をもらう→そっけない手紙の提示→お見合い前その話題手紙フラグ終わり。(お見合い後の手紙は生きている)
;もしも、お見合い後に手紙を出した→お見合い後に返事をもらう→いい感じの手紙を提示→お見合い後その話題手紙フラグ終わり。(お見合い前の手紙は生きているが特に意味がないのでフラグを閉じておく？)

;//////特殊手紙挨拶テンプレ/////
;(お見合い前)
;手紙ありがとう。(話題)についてだね。それなら
;(お見合い後)
;いつも手紙をありがとう。(話題)についてだね。それなら

[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[eval exp="sf.FButton='OFF'"]




;////☆特殊手紙のやりとり///////////
;△趣味について
*sijyou_syumi_1|(お見合い前)
[テキスト全画面白文字]
『趣味について』(お見合い前)[p]
;#
[手紙四条 fumi_number=]
[r][r][r]
[名前]へ[r]
[r]
手紙ありがとう。(話題)についてだね。それなら[r]
庭で花を愛でることだよ。家も華道をやっているからね。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=]

*sijyou_syumi_2|(お見合い後)
[テキスト全画面白文字]
『趣味について』(お見合い後)
[p]
;#
[手紙四条 fumi_number=]
[r][r][r]
[名前]へ[r]
[r]
いつも手紙をありがとう。(話題)についてだね。[r]
それなら、自分で花を植えて育てることだよ。[r]
庭師と家族にはいつも困った顔されるよ。[r]
けど、祖母だけは華道の材料に使ってるところを僕は見てるんだよね。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=]


;///////////△家族について///////////
;これについて手紙を出すと
;イベント6クリアまでは好感度が下がる。
*sijyou_kazoku_1|(お見合い前)
[テキスト全画面白文字]
『家族について』(お見合い前)
[p]
;#
[手紙四条 fumi_number=]
[r][r][r]
[名前]へ[r]
[r]
;手紙ありがとう。家族についてだね。それなら[r]
両親と他兄妹が多いよ。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=]

*sijyou_kazoku_2|(お見合い後)
[テキスト全画面白文字]
『家族について』(お見合い後)
[p]
;#
[手紙四条 fumi_number=]
[r][r][r]
[名前]へ[r]
[r]
いつも手紙をありがとう。家族についてだね。それなら[r]
両親と兄と妹と弟がいるよ。[r]
兄は海外に行ってることが多くて最近では顔も忘れそうだよ。[r]
両親は君のことを気に入っていたよ。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=]
*sijyou_kazoku_3|(イベント6後)
[テキスト全画面白文字]
『家族について』(イベント6後)
[p]
;#
[手紙四条 fumi_number=]
[r][r][r]
[名前]へ[r]
[r]
いつも手紙をありがとう。家族について話すとするなら[r]
[名前]さんは四条[名前]になるのでしょうか[r]
駆け足の如く、色々とありましたね[r]
[名前]さんに苦労はかけないよう努力します。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=]

;///////////△将来について///////////
*sijyou_syourai1|(お見合い前)
[テキスト全画面白文字]
『将来について』(お見合い前)
[p]
;#
[手紙四条 fumi_number=]
[r][r][r]
[名前]へ[r]
[r]
;手紙ありがとう。将来についてだね。それなら[r]
家は華道の家系。別途、鉱山稼業をしているので、[r]
存続させるように努力したいな。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=]

*sijyou_syourai2|(お見合い後)
[テキスト全画面白文字]
『将来について』(お見合い後)
[p]
;#
[手紙四条 fumi_number=]
[r][r][r]
[名前]へ[r]
[r]
;いつも手紙をありがとう。将来についてだね。それなら[r]
将来は四条家で誇れるものを見つけたいな。[r]
祖父にお前は、『平均的に何でもこなすが特出したものがない』[r]
って言われるから。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=]

;///////////△友人について///////////
*sijyou_yujin_1|(お見合い前)
[テキスト全画面白文字]
『友人について』(お見合い前)
[p]
;#
[手紙四条 fumi_number=]
[r][r][r]
[名前]へ[r]
[r]
;手紙ありがとう。友人についてだね。それなら[r]
君も知ってるだろうけど文矢が友人だよ。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=]

*sijyou_yujin_2|(お見合い後)
[テキスト全画面白文字]
『友人について』(お見合い後)
[p]
;#
[手紙四条 fumi_number=]
[r][r][r]
[名前]へ[r]
[r]
手紙ありがとう。友人についてだね。それなら[r]
文矢が一番の親友だよ。[r]
文矢は手紙に合う心葉についてよく訊かれたよ、[r]
彼の朗らかなところが好きなんだよね[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=]

;///////////////特殊話題について終わり///////////////











;☆////////////////季節の話////////////////
;お見合い後を想定。それ以外は何も無し
;日付調整で入らないものはスルーしてください
;/////季節の手紙の挨拶テンプレ//////
;[名前]、元気にしてるかい？[r]
;[名前]へ。今日思ったことを手紙にして送るよ[r]
;[名前]へ。いつも手紙をありがとう。[r]
;/////////////春の手紙のやりとり///////////

*1
[テキスト全画面白文字]
春[r]
[r]
『ヒヨドリ』[p]
;#
[手紙四条 fumi_number=1]
[r][r][r]
[名前]へ[r]
[r]
[名前]、元気にしてるかい？[r]
木の上で甲高く鳴く鳥をみてヒヨドリと教えてもらました。[r]
聞いたところ、外敵に襲われないように冬の海の上を[r]
スレスレに飛んで渡ってくるそうです。[r]
[r]
見かけによらず芯の強いところは誰かを彷彿させます。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=1]

*2
[テキスト全画面白文字]
春[r]
[r]
『お茶の中に』[p]
;#
[手紙四条 fumi_number=2]
[r][r][r]
[名前]へ[r]
[r]
いつも手紙をありがとう。[r]
お茶をいただいたら湯飲みの中に桜が舞い込んできました。[r]
ホッとする幸せを届けてくれる[名前]は春の天人ではないか[r]
などと考えてしまいます。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=2]

*3
[テキスト全画面白文字]
春[r]
[r]
『チューリップ』[p]
;#
[手紙四条 fumi_number=3]
[r][r][r]
[名前]へ[r]
[r]
今日は面白いことを知ったので手紙に書くよ。[r]
チューリップは欧州貴族がこぞって品種改良し、病気で出来た[r]
チューリップを巡ってチューリップバブルが起きたこともあるそう[r]
です。[r]
珍しくもなくてもいいから健やかな花がいいですよね。[r]
いつかは、[名前]と花を育ててみたいです。[r]
;今みたら暗示的なものに見える
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=3]

*4
[テキスト全画面白文字]
春[r]
[r]
『筍』[p]
;#
[手紙四条 fumi_number=4]
[r][r][r]
[名前]へ[r]
[r]
いつも手紙をありがとう。[r]
庭先に筍が生えてきました。[r]
大きくなる前にとらないといけないです。[r]
ですから、一昨日から食事は筍三昧でそろそろ飽きてきました。[r]
[名前]と食事ができれば、毎日筍ご飯でも楽しいのですがね[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=4]

;/////////////夏の手紙のやりとり///////////
;見合い前なのでは？
*5
[テキスト全画面白文字]
夏[r]
[r]
『すだれ』[p]
;#
[手紙四条 fumi_number=5]
[r][r][r]
[名前]へ[r]
[r]
すだれを出したら使い物にならないほどに痛んでいました。[r]
この梅雨のせいかな。[r]
[名前]の家では夏の準備は終わりましたか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=5]

*6
[テキスト全画面白文字]
夏[r]
[r]
『かき氷』[p]
;#
[手紙四条 fumi_number=6]
[r][r][r]
[名前]へ[r]
[r]
かき氷って、抹茶、牛乳以外、味はあまり変わらないのに[r]
色が違うだけで楽しくなりますよね[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=6]

*7
[テキスト全画面白文字]
夏[r]
[r]
『蛙』[p]
;#
[手紙四条 fumi_number=7]
[r][r][r]
[名前]へ[r]
[r]
清流の前で涼んでいると小さな蛙がでてきました。[r]
蛙は涼しそうな顔をして、茹だる僕のことを笑っているように[r]
見えました。[r]
;そういえば、昔、文矢と[名前]で川に涼みにいきましたね。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=7]

*8_1
[テキスト全画面白文字]
夏[r]
[r]
『夏の夜明け』[p]
;#
[手紙四条 fumi_number=8_1]
[r][r][r]
[名前]へ[r]
[r]
古今和歌集に詠まれていたが本当に夏の夜明けは早く[r]
よい夢が覚めてしまいます。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=8_1]

*8_2
[テキスト全画面白文字]
夏[r]
[r]
『昨晩の星』[p]
;#
[手紙四条 fumi_number=8_2]
[r][r][r]
[名前]へ[r]
[r]
昨晩の星をみられましたか 身勝手の許されない身がくやしいです。[r]
織姫と彦星も文通してるのでしょうか[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=8_2]


*8_3
[テキスト全画面白文字]
夏[r]
[r]
『ネリネ』[p]
;#
[手紙四条 fumi_number=8_3]
[r][r][r]
[名前]へ[r]
[r]
暑さも薄まりもうすぐ秋になりますね[r]
ネリネの花言葉を知っていますか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=8_3]

;////////////秋の手紙のやりとり////////////
*9
[テキスト全画面白文字]
秋[r]
[r]
『秋の夕暮れ』[p]
;#
[手紙四条 fumi_number=9]
[r][r][r]
[名前]へ[r]
[r]
雨が残した露もまだ乾ききらないのに、[r]
槇の葉にはもう霧が立ちのぼっていく秋の夕暮れは、[r]
ものがなしいものを感じます[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=9]

*10
[テキスト全画面白文字]
秋[r]
[r]
『秋の空』[p]
;#
[手紙四条 fumi_number=10]
[r][r][r]
[名前]へ[r]
[r]
空気が澄んできてどこまでも雲がみえるようになりましたね。[r]
時折、背中を押すような強い風が吹いています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=10]

*11
[テキスト全画面白文字]
秋[r]
[r]
『読書』[p]
;#
[手紙四条 fumi_number=11]
[r][r][r]
[名前]へ[r]
[r]
紅葉が広げた本にも挟まるほど縁側を彩っています。[r]
紅葉の葉が読んだところを教えてくれました。[r]
縁側で[名前]と読書をしてみたいですね。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=11]

;/////////////////////冬の手紙のやりとり////////////
;旅行中かも？？ およそ、ひと段落してるので愛情的な文面
*12
[テキスト全画面白文字]
冬[r]
[r]
『冬の夜ふけに』[p]
;#
[手紙四条 fumi_number=12]
[r][r][r]
[名前]へ[r]
[r]
冬は夜もふけるのも早く、あけるまでが長いですね。[r]
早く[名前]に会いたいです。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=12]

*13
[テキスト全画面白文字]
冬[r]
[r]
『別荘にて』[p]
;#
[手紙四条 fumi_number=13]
[r][r][r]
[名前]へ[r]
[r]
山里の別荘にいくと寂しいものです。[r]
冬はとりわけ静かに感じます。[r]
2人でいるとまた違って見えるのでしょうか[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=13]

*14
[テキスト全画面白文字]
冬[r]
[r]
『新年の準備』[p]
;#
[手紙四条 fumi_number=14]
[r][r][r]
[名前]へ[r]
[r]
家族は皆、ドレスを着て鏡の前で宮さまの前に出る(礼)の[r]
練習をしています。[r]
新しい年にむけて、慌ただしくなってきましたが、[r]
[名前]は、如何お過ごしでしょうか？
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=14]


*15
[テキスト全画面白文字]
冬[r]
[r]
『白霜』[p]
;#
[手紙四条 fumi_number=15]
[r][r][r]
[名前]へ[r]
[r]
今朝はとても冷え込みましたね[r]
白霜がついた美しい枝をみているでしょうか、[r]
熱い指では手渡すこともできません。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=15]
;////////季節の手紙内容おわり////////

;///////エンド前への手紙///////
;*16_end
[テキスト全画面白文字]
冬[r]
『結納』[p]
[手紙四条 fumi_number=]
[r][r]
[名前]へ[r]
[r]
_　3月には、いよいよ[名前]との結納ですね。 [r]
[名前]はどんな気持ちでいますか？ [r]
[r]
感謝の言葉と、これから迷惑をかけるお詫びとで[r]
入り混じります。[r]
たくさんの[名前]との思い出を綴っていきたいです。[p]
他にも伝えたいことはありますが、それは結納の時の為に[r]
とっておきます。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]
;///////エンド前への手紙おわり///////

;///////疎遠になったワケへの手紙///////
;思いつかない～　文矢さんて海外にいるのかな？
;*17_ex
[テキスト全画面白文字]
春[r]
『未来へ』[p]
[手紙四条 fumi_number=]
[名前]へ[r]
[r]
花が咲き乱れ、心弾ませる季節となりましたね。[r]
華道家の祖母の展覧会への手伝いで慌しくなるころ、[r]
慌しく春を感じてしまう僕ですが、[名前]さんは、[r]
その後、お変わりなくお元気でしょうか？[r]
[r]
庭の牡丹の剪定をしていたところ、ふと過去を思い出しました。[r]
庭で文矢と僕が将棋に興じていたところ、花を見つめていた、[r]
[名前]に花をあげたよね。[r]
[r]
文矢が多忙になり、[名前]さんが淑女として家に入ってからは、[r]
話さなくなってしまいましたが、これからは、[名前]さんと[r]
色々なことを話していきたいです[p]
;11行目で改ページで新たな真実笑
追伸。気づいてるかもしれないけど、実をいうと文章を書くのは[r]
苦手で、いつも綺麗な返信を送ってくれる[名前]には、頭が[r]
あがらないよ。[r]
[r]
その代わりといっては、なんですが、ひとつ[名前]にさんと、[r]
約束します。[r]
僕の中にひとつ極めるものを見つけると。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]
;追伸は、他の手紙の整合あわせなのですよ・・・
;///////疎遠と懺悔の手紙おわり///////
;///////一歩進んでいるよとの手紙///////
;このままだと努力の実体性がない男なので付け足す。
*18_ex
[テキスト全画面白文字]
春[r]
『全力』[p]
[手紙四条 fumi_number=]
[名前]へ[r]
[r]
メジロが庭の桜の蜜をあつめており、心穏やかにさせてくれます。[r]
[名前]さんは、お変わりなくお元気でしょうか？[r]
[r]
さて、この度、四条華織は、[名前]のお約束とおり、[r]
祖母の開いた華道競合会にて大賞受賞を果たしました。[r]
場所が場所だけに七光りと思われがちですが、[r]
祖父にも、来ていただいた方にも心にくる華だと褒めていただき[r]
ました。[p]
もう、何も迷うこともない。[r]
だから今、全力で自分を使って色々な場所で活躍していきます。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]
[手紙四条読了 fumi_number=]
;///////アイデンティな手紙おわり///////
*19_ex
;///////兄の手紙///////
;◎お見合い決定後に文矢から手紙がないとおかしいのでは？
;◎友人のくせに変化を知らない理由がわからない
;あまり小うるさくならない程度に書く
[テキスト全画面白文字]
秋[r]
『妹へ』[p]
[手紙文矢 fumi_number=]
[r]
[名前]へ[r]
拝啓[r]
庭の楓が恋しくなる季節となりました。[r]
お元気にしてますか？[r]
こちらは外交官としての仕事も落ち着きを[r]
取り戻したところです。[r]
[r]
さて、父から話をききました。[r]
[名前]が、華織を選ぶとは、僕としても[r]
嬉しい驚きを感じています。[p]
家を出てから、華織とは、たまに手紙で[r]
やりとりするくらいになってしまいましたが、[r]
華織も変わりないでしょうか？[r]
[r]
何か困ったことが、あったら磯野に相談する[r]
ように。[r]
兄としても、友人としても、ふたりのことを[r]
心から応援しています。[r]
[r]
冷たい風が強いなってきましたが、風邪をひか[r]
ないように気をつけてください。[p]
追伸[r]
もう少し落ち着きましたら、家族揃って会食に[r]
でも行きたいですね。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　文矢[p]
[手紙読了]
;///////兄の手紙///////


;実装時に各手紙に読了処理等を追記予定
;fumi_numberがうまく動作していないので実装時に試行錯誤予定。マクロじゃなく各所にベタ打ちした方が早いやも

[イベントシーン終了]
@jump storage="test_sijyou.ks"
[s]

