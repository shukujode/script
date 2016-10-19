;期間　春　イベント発生条件　全てのイベントを見ている場合、または華道のレベルなど差別化で甘さ回避
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;同じ表情を３回使うので登録
[macro name=主人公困り照れ]
;～～～驚きつつ困惑照れ～～～
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓目：[主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;～～～驚きつつ困惑照れ～～～
[endmacro]
[イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
; 起 　散策　家が近いのでたまたま出会う。事件もおわって親の許可も得ているので
;場所　いつもの町中
;季節描写　春
はろやかな光が、町に植えられた桜の合間を縫って花びらと共に降り注ぐ[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
;がやがやSE
;【SE】人々のざわめき（ザワザワ…屋外）
[playse storage=zawa_out.ogg loop=false ]
春の陽気につられてた人々は、それぞれ気に入った商店に向かって賑わっていた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(今日は、人通りが多いみたいだわ）[p]
;がやがやSE
;【SE】人々のざわめき（ザワザワ…屋外）
[playse storage=zawa_out.ogg loop=false ]
[主人公ふぅ閉]
;帰ろうとするが・・・　セリフは適当
[whosay name=&sf.girl_namae color="#cf5a7f"]
（こんなに人通りが多くては、ぶつかりそうで、散策するのも[r]
[sp]気が楽ではないわ。……少ししたら帰りましょう）[p]
;↓口：通常 [主人公口通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[fadeoutbgm time=3000]
人込みを避けて大通りをぬけていこうとしたときだった――[r]
　大量の花弁を持ち上げて春の嵐が吹き抜けていく。[p]
;春風がふくSE　天候・風04（草原02）短め
[主人公驚]
[主人公ポーズ指]
[image name="saku1" storage="bg/B4nFWraU42/img_sakura_sijyou.png" layer=1 zindex=2 left=-200]
;------------keyframe の定義
[keyframe name="animation1"]
[frame p=100% x="3000" scale="4"]
[endkeyframe]
;アニメーション実行
[kanim name="saku1" keyframe="animation1" time="4000" ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（！　すごい風……）[p]
[主人公ポーズ通常]
;~~強い風に目を閉じずにはいられない主人公~~
;↓効果：汗 [主人公汗]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
;↓口：通常 [主人公口通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;~~強い風に目を閉じずにはいられない主人公~~
・・・・・・[p]
[主人公横伏目]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ふぅ。　急に強く吹いてくるものだから驚いていまったわ）[p]
[iscript]
$('.saku1').remove();
[endscript]
;桜吹雪の合間に
――うち靡く、花弁が、開幕のように過ぎていき[r]
桜吹雪の合間に特徴的なすらりとした背中が目に入る[p]
;～～～どきりと期待して驚く主人公～～
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;↓目：横目 [主人公横目]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
;[主人公口開]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;～～～どきりと期待して驚く主人公～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あれは……」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】星降る夜に（思い出/夢見るシーンに
[playbgm storage="yumemiru_hoshi.ogg" loop=true]
[eval exp="f.bgm_storage='yumemiru_hoshi.ogg'"]
[endif]
その人は、どんな人込みの中でも見間違うことがなかった。[r]
むこうもこちらに気づいて歩み寄る[p]
;四条喜び全開
[四条ベース着物]
[四条笑顔大]
[whosay name="華織" color="olivedrab"]
「[名前]さん！　こんなところで会えるなんて奇遇だね。[r]
;困り笑顔
[四条困り微笑み]
[sp]といっても、家が近いから運命と呼べるには気が早いかな」[p]
[四条微笑み]
;恥ずかしい　戸惑い
[主人公ポーズ通常]
;↓口：控え目な笑顔 [主人公口笑顔小]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、そうですね」 [p]
[主人公ふぅ閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どうしましょう…… せっかく会えたのに正式に会う手順を踏んでいないわ）[p]
[主人公困り]
;四条なにか気づくイメージ
[四条目大]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様……またお会いする時、ご連絡ください」 [p]
;切ない　残念
#
[四条真剣]
[whosay name="華織" color="olivedrab"]
「待って！[名前]さん」[p]
;[主人公口開]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「で、ですが」[p]
;↓口：通常 [主人公口通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「もう、気にしなくていいと思いますよ。　
[四条笑顔]
[四条頬染め]
行きましょう！」 [p]
;手をつないで　(昔みたいに)
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様！？」[p]
[主人公退場]
[四条退場]
;【SE】うぐいす（ケキョケキョ）
[playse storage=tori_uguisu_pikyo.ogg loop=false ]
#
;//////////////////~~シーン銀座~~////////////////////////////
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
;背景銀座
[chara_mod name="bg" storage="bg/B4nFWraU42/ginza3.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
;磯野に罪悪感　どきどき　楽しい
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
;↓眉： [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（はじめて、磯野にも言わずで遠くまで来てしまったわ）[p]
[主人公横目]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そういえば、手だって……）[p]
私は、多くの公衆の面前だというのに自然と華織と手を繋いでいたことに気づいてしまった。[p]
;暫定ト書き
小さな町中では、こっそりと手を繋ぐことができても、こういった男女が多い場所で人目を憚らず繋ぐのは、
はじめてで、意識してしまうと、とても恥ずかしい。[p]
[主人公目伏柔]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(けど、これからは、ずっと繋いで歩けるのでしょうか） [p]
昔、見た恋絵巻を見てるような出来事が、さも普通に訪れていることに驚きを隠せなかった。[p]
[四条ベース着物]
[四条笑顔]
[四条頬染め]
[whosay name="華織" color="olivedrab"]
「 これからは、ずっと繋いで歩いて行けたらいいね」 [p]
;にこりと笑って
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」 [p]
[whosay name="華織" color="olivedrab"]
「そうだ、今日はいいところに行こうか」[p]
;怪しいところ？とドキドキする
[主人公目大]
;[主人公口開]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいところ……ですか？」[p]
;淑女度低い場合
[if exp="f.para_shujinkou_shukujodo < 200"]
[fadeoutbgm time=3000]
;華織、焦って
[四条驚き]
[四条頬染め]
[四条眉強気]
[whosay name="華織" color="olivedrab"]
「あ、蕎麦は食べないし、 そば屋の２階には行かないから安心して[r]
[sp]ください！ [名前]さんのことは、大事ですから！　」[p]
;華織様は手を振って、不思議なことを話しかけた[p]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「え？　」[p]
;【SE】うぐいす（ケキョケキョ）
[playse storage=tori_uguisu_pikyo.ogg loop=false ]
[四条口微笑み]
[四条眉困り]
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「……なんでもないよ」[p]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(蕎麦屋の二階に何があるのでしょう？　後で磯野に聞いてみようかしら？）[p]
;ちなみに調べてはダメだ
;以上大人と子供でした
[endif]
[fadeoutbgm time=3000]
[主人公退場]
[四条退場]
;////////////////////~~シーン香水店前~~~///////////////////////////
#
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kousuiB.jpg"]
;背景：店外
;華織、香りつながりで化粧品店、調香店に 行く
華織様に付いていくと、ビルヂングの下に収まった店が目に留まった。[p]
ショーウィンドウには、花が活けられ、中の照明と共に商品を引き立ていた。[p]
;適当↑
[主人公ポーズ通常]
[wait time=10]
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(ここは……？）[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
[wait time=1]
[四条ベース着物]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「ここは、祖母の知人が営んでいる 調香店だよ」[p]
[主人公口ほほえみ]
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えぇと、香水の専門店でしょうか……？」[p]
;ふたりで香水を選ぶ
[四条口開]
[whosay name="華織" color="olivedrab"]
「そうだね。ただ、ここは海外の香水店を見習って調香できる店なんだ。[r]
[sp]入ろうか」[p]
;場面転換のお知らせなのだけどセリフが不自然かも
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい……」[p]
[主人公ポーズ通常]
[主人公通常]
[wait time=10]
[主人公目閉じ]
[四条退場]
;主人公退場でもいい
;////////////////////~~シーン香水店内~~~///////////////////////////
#
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kousi.jpg" time=2000 wait=false]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
;背景説明　背景ないので未
[四条ベース着物]
[四条通常]
;説明・四条綾花・・・祖母　散策をみてね
[主人公通常]
[wait time=10]
;SEドアベル音　音人鈴付きドア・閉める
[whosay name="調香店主" color=%mp.color]
「いらっしゃいませ～！[r]
[sp]あらまぁ！ 四条綾花様のところに華織様じゃないですか」[p]
[四条目閉じ]
[四条口微笑み]
[whosay name="華織" color="olivedrab"]
「いつも　祖母がお世話になっています」 [p]
;店内の花のディスプレイをしてもらっている
[四条目通常]
[whosay name="調香店主" color=%mp.color]
「いえいえ！　こちらこそ、 お世話になっています!」 [p]
[whosay name="調香店主" color=%mp.color]
「なんたって、華道の名士の”四条綾花様”に店内に華を添えて[r]
[sp]頂いているおかげで、こんな偏屈な店でも、閑古鳥が鳴くこともなく、[r]
[sp]素敵なお客様達が来て頂けるのですから！」[p]
#
店主は、口早にお世辞を言うと楽し気に私たちを迎えれた。[p]
;ふたりを見てお世辞をいう店主　まぁまぁ儲かってはいるようだ
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[主人公横目]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(とても溌剌とした方ですのね。華織様はたまに来られるのでしょうか？)[p]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「ふふ、  お元気そうで何よりです。[r]
[sp]今日は祖母の付き人ではなく、お客として来ましたので、選ばせて[r]
[sp]もらってもいいでしょうか？」 [p]
[whosay name="調香店主" color=%mp.color]
「ええ、もちろん！」[p]
[主人公通常]
[wait time=10]
#
調香店の主は、いくつか持ち出してくると、ふたりの前に小瓶を並べる。[r]
その小瓶の中には僅かにだけ、香水が入っており、手に取りやすい大きさの木箆が漬けられていた。[p]
;ふたりで選ぶ
[whosay name="華織" color="olivedrab"]
「気になった香り名があったら、これを取り出して、仰いでみて」[p]
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（なるほど、こうやって選ぶのですね……）[p]
[主人公ポーズ通常]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様と一緒にいると、新しい発見ができる気がします……）[p]
[主人公目通常]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「こっちは、優しい香りみたいだね」 [p]
;説明する　カタカナ使ってもいい？
[whosay name="調香店主" color=%mp.color]
「そちらの”ぱるふぁん”は、”ふろーらる”系で、特に"愛に効く香り"として[r]
[sp]重宝されてますよ」[p]
[主人公困り照れ]
;～～四条照れ驚き小～～
[四条眉通常]
[四条目大]
[四条頬染め]
[四条口驚き]
;～～四条照れ驚き小～
[whosay name="華織" color="olivedrab"]
「そ、そうなんですか？　」 [p]
[主人公眉通常]
[主人公目通常]
;四条照れの間
[四条困り微笑み]
[whosay name="調香店主" color=%mp.color]
「あぁ、そういえば！[r]
[sp]丁度、そちらの香りに合うに会う香水を入荷しましたので、[r]
[sp]お持ちしますね！」[p]
[四条効果消]
[四条微笑み]
#
調香店の店主は選んだ香水を受け取ると、持ってきた小さな小瓶に混ぜて香りを確かめる。[p]
;マドラー的なものでかき混ぜる音
[whosay name="調香店主" color=%mp.color]
「さぁ、まずは、華織様。　どうぞお試しください」[p]
;↓目：横目 [主人公横目]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「ありがとう」[p]
[主人公目伏柔]
#
店主が華織様に手渡す小瓶から、微かな香りが流れ、鼻をくすぐる。[p]
[主人公眉下げ下]
[主人公目閉じ]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
;[四条目にこ]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（いい香りがするわ……優しい花の香りから、爽やかな香りに変わって[r]
[sp]いくのですね）[p]
;[四条目通常]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
[whosay name="調香店主" color=%mp.color]
「よろしければ、華織様に近づいてご確認くださいね。[r]
[sp]人がつけると香りも変わりますので……」[p]
[主人公困り照れ]
;～～～～～～～～選択肢～～～～～～～～～～～～～
[四条退場]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どうしようかしら）
[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]
[eval exp="f.haikei_credit=''"]
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
;低度なダジャレ多発
[link target=*kag]華織様の香りをかぐ[endlink][r]
[r][r][r]
[link target=*not_kag] 小瓶の香りを確かめる[endlink]
[s]
;～～～～～～～～選択肢～～～～～～～～～～～～～
*kag
[resetfont]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[cm]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kousi.jpg" time=2000 wait=false]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[四条ベース着物]
[四条微笑み]
;セリフは適当 もっとお上品にしてください
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（恥ずかしい……けれど、もう気にしなくても……いいかしら？）[p]
#
華織様に近づいて首筋から温かく溢れる香りを確かめる。 [p]
[四条頬染め]
[四条困り微笑み]
[whosay name="華織" color="olivedrab"]
（ [名前] さんが……） [p]
;[主人公横伏目]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様が……）[p]
[whosay name=ふたり color="%mp.color"]
((　近い　)) [p]
;イライラする
;お互いに目があって離れる？
;↓目：柔和な伏目 [主人公目伏柔]
#
[四条目閉じ]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
さっきまでの爽やかに変わっていった香りが、華やかで印象深い香りへと変わっていく。[p]
[主人公ポーズ通常]
[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(この香り、華織様の印象に合っていて……まるで華織様に抱きしめられているみたいだわ……）[p]
;書くの辛い・・・
ふと、私は今の状態がどんな態勢であるか気になってしまった。[p]
;四条耐える　戸惑い
[四条微笑み]
[四条汗]
[whosay name="華織" color="olivedrab"]
「[名前] さん……」 [p]
[主人公目通常]
――　目と目が合う[p]
[主人公驚]
香りにつられたのか、華織様との距離あ、いつもより、とても近い場所に私はいた。[p]
それこそ抱きしめているかのような距離。[p]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「! ご、ごめんなさい」[p]
;↓口：通常 [主人公口通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[四条笑顔]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「い、いいですよ、僕が頼んだみたいのものですから」[p]
;~~~~~四条安堵~~~~~
;[四条頬染め]
[chara_mod name="sijyou_emo" storage="sijyou/emo_hohosome.png" time=0]
[wait time=10]
;[四条眉通常]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_futuu.png" time=0]
[wait time=10]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
;[四条口ムッ]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_mu.png" time=0]
[wait time=10]
;~~~~~四条安堵~~~~~
[whosay name="調香店主" color=%mp.color]
「あらま。お二人とも照れちゃって！[r]
[sp]あながち間違いではないでしょう？」[p]
[主人公ポーズ通常]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[四条汗]
[四条困り微笑み]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「か、からかわないで下さいよ」[p]
@jump target=*common
;～～～～～～～～選択肢～～～～～～～～～～～～～
*not_kag
[resetfont]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[cm]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kousi.jpg" time=2000 wait=false]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[四条ベース着物]
[四条微笑み]
[主人公ポーズ片手]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「わ、私は、こちらの香りで大丈夫です！」 [p]
[主人公ポーズ通常]
;～～～～～～～～選択肢～～～～～～～～～～～～～
*common
[主人公目通常]
[主人公眉通常]
;[四条頬染め]
[chara_mod name="sijyou_emo" storage="sijyou/emo_hohosome.png" time=0]
[wait time=10]
[四条微笑み]
;共通
;いたずらに笑ってみている店主
[whosay name="調香店主" color=%mp.color]
「奥様もお試しください。　次は、もう少し甘目の香りにしますね」[p]
;マドラー的なものでかき混ぜる
[whosay name="調香店主" color=%mp.color]
「はい、どうぞ」[p]
;～～～驚きつつ困惑照れ３～～～
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
;↓目：[主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓口：小さく開けた状態。
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
;～～～驚きつつ困惑照れ３～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい！」[p]
[主人公口通常]
[whosay name="華織" color="olivedrab"]
「[名前]さんも、首の後ろにつけてごらん」[p]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ええと……こうかしら？）[p]
[whosay name="調香店主" color=%mp.color]
「 華織様、そこは、つけて差し上げては如何でしょうか？　」[p]
[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]
[eval exp="f.haikei_credit=''"]
[主人公困り照れ]
;～～～～～～～～選択肢～～～～～～～～～～～～～
[四条退場]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どうしようかしら）
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=*tukete]つけてもらう[endlink][r]
[r][r][r]
[link target=*not_tukete] 自分でつける [endlink]
[s]
;～～～～～～～～選択肢～～～～～～～～～～～～～
*tukete
[resetfont]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[cm]
[chara_mod name="bg" storage="toumei.gif"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kousi.jpg" time=2000 wait=false]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[四条ベース着物]
[四条微笑み]
#
つけてもらう[p]
[主人公真剣]
;↑のほうが爽やか？
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様、私、よくわからないので、ぜひお願いします」[p]
[whosay name="華織" color="olivedrab"]
「わかりました、待ってくださいね」[p]
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;↓目：通常 [主人公目横目]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
#
華織様は、小瓶から木箆をとると、余分な香水を落として[名前]の目の前に差し出した。[p]
[whosay name="華織" color="olivedrab"]
「[名前]さん、悪いけど髪をあげてくれますか？　」[p]
;～～～驚きつつ困惑照れ２～～～
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓目：[主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓口：小さく開けた状態。
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
;～～～驚きつつ困惑照れ２～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[四条困り微笑み]
[whosay name="華織" color="olivedrab"]
「くすぐったかったらごめんね」[p]
;セリフは適当。お上品にしてください
#
冷たい香りの露が首筋を撫でる。[p]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（！　）[p]
;~~~~~~~四条控えめな驚き~~~~~~~
;[四条目通常]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
;[四条口開]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_ake.png" time=0]
[wait time=10]
;[四条汗]
[chara_mod name="sijyou_emo" storage="sijyou/emo_ase.png" time=0]
[wait time=10]
;~~~~~~~四条控えめな驚き~~~~~~~
[whosay name="華織" color="olivedrab"]
「だ、大丈夫でしょうか？」[p]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「だ、大丈夫です！　少しくすぐったかっただけですから！」[p]
;~~~~~四条安堵~~~~~
;[四条頬染め]
[chara_mod name="sijyou_emo" storage="sijyou/emo_hohosome.png" time=0]
[wait time=10]
;[四条眉通常]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_futuu.png" time=0]
[wait time=10]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
;[四条口ムッ]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_mu.png" time=0]
[wait time=10]
;~~~~~四条安堵~~~~~
@jump target=*common2
;だめだわ、ラブ波に耐えられないイライラする
;～～～～～～～～選択肢～～～～～～～～～～～～～
*not_tukete
[resetfont]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[cm]
[chara_mod name="bg" storage="toumei.gif"]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kousi.jpg" time=2000 wait=false]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[四条ベース着物]
[四条微笑み]
#
自分でつける[p]
[主人公驚]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「だ、大丈夫です！　私、自分で出来ますので！」[p]
[主人公ポーズ通常]
;～～～～～～～～選択肢～～～～～～～～～～～～～
*common2
[四条微笑み]
[主人公困り照れ]
[whosay name="調香店主" color=%mp.color]
「いかかでしょうか？」[p]
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
華織様がそっと肩に近づく。[p]
;[四条頬染め]
[chara_mod name="sijyou_emo" storage="sijyou/emo_hohosome.png" time=0]
[whosay name="華織" color="olivedrab"]
「うん、いい香りだね」[p]
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……）[p]
;↓目：[主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=1
[whosay name="調香店主" color=%mp.color]
「この香水、お二人が並ぶと調和する香りなんですよ」[p]
;↓目：横目 [主人公横目]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そういえば……華織様との香りが混ざっても、いい香りだわ）[p]
[主人公ポーズ通常]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
;うるさいかも↓
[whosay name="調香店主" color=%mp.color]
「香水というものは、一歩間違えると嫌味な匂いになってしまいますからね[r]
[sp]特にまだ海外製品が多いので体にあっているものが少ないんです][p]
;ハーフは入ってませんよ！
[whosay name="華織" color="olivedrab"]
「ふたりで調和する香りなんだね。　いいね。　[r]
[sp]これを二人の思い出の品の ひとつにしようか」[p]
[主人公笑顔]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい！ 」[p]
[主人公ほほえみ]
[whosay name="調香店主" color=%mp.color]
「よろしければ、この香水に名前をつけてあげてくださいね[r]
[sp]そうしますと、愛着も増してつける具合も変わってきますから……」[p]
;淑女度で変更
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[if exp="f.para_shujinkou_shukujodo < 200"]
[whosay name="華織" color="olivedrab"]
「そうですね　どんな名前にしようかな」[p]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華やかだけど調和する香り……[r]
[sp]そこに華やかに佇んでいても、周囲を和ませてくれる香りだから）[p]
;思いつかない 華はな和わけ？
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織……なんて。[r]
[主人公ほほえみ]
[sp]……華織様なんというでしょうか）[p]
[else]
[whosay name="華織" color="olivedrab"]
「そうですね　よく考えておきます」[p]
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（なんという名前にしようかしら……）[p]
[endif]
;転
;仲良くしていると 調香店の店主は四条祖母、綾花と祖父、源次郎の若いころの思い出を語る
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[whosay name="調香店主" color=%mp.color]
「綾花様が気にされていたとおり、本当に仲がよろしいのですね」 [p]
[主人公困り照れ]
[四条困り微笑み]
[whosay name="華織" color="olivedrab"]
「祖母は、なにかとおしゃべりな人で……また何か話していましたか？」[p]
[whosay name="調香店主" color=%mp.color]
「お二人を見ていると、昔の自分たちを思い出すとおっしゃっていましたよ」[p]
;困り笑顔
[主人公照れ]
;[四条頬染め]
[chara_mod name="sijyou_emo" storage="sijyou/emo_hohosome.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「また、その話をしていたのですね……[r]
こちらとしては、嬉しいのですが気恥ずかしくもありますよ」[p]
;主人公照れ
[主人公照れ目普通]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様のお祖母様の綾花様は、明るい方なのですね……）  [p]
[四条微笑み]
[fadeoutbgm time=3000]
[whosay name="調香店主" color=%mp.color]
「いえ、私もそう思いますよ！　今日お二人にお会いして、しみじみと思いましたよ」[p]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]
[whosay name="調香店主" color=%mp.color]
「綾花様は、私が店を始めだした時からのお客様でね、[r]
[sp]華道の修業も兼ねてですが、この店の窓際に花を活けてもらっていたんです」[p]
[四条退場]
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~シーン回送~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;店外　効果セピア
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
;回想シーン 効果セピア
[iscript]
//#tyrano_base > div.layer.\31 _fore.layer_fore
var lay1=document.getElementsByClassName("layer 1_fore");
lay1[0].style.webkitFilter = "sepia(100%)";
[endscript]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kousuiB.jpg"]
[whosay name="調香店主" color=%mp.color]
「しばらくしたら、浮かない顔をしたお客様が来られて……あ、これは内緒にしてくださいね」[p]
[whosay name="華織" color="olivedrab"]
「 祖母と違っていいませんよ」[p]
[whosay name="調香店主" color=%mp.color]
「その"浮かない顔をした"お客様は、 今でいう、華織様のお祖父様、[r]
[sp]"四条源次郎"様でした」[p]
調香店の主は、遠い目をして過去を振り返る[p]
[whosay name="調香店主" color=%mp.color]
「源次郎様は四条家のひとり息子であらされましたが、色々と苦労をされていた様子でしたね」[p]
[whosay name="調香店主" color=%mp.color]
「ええ、彼は努力家ではありましたが、どうも語学にはからっきしダメな[r]
[sp]ようで、海外貿易必須の鉱山業で、源次郎様は、お父様によく怒られ[r]
[sp]ていたそうです」[p]
[whosay name="華織" color="olivedrab"]
「 あの厳格な祖父がですか……？」[p]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓目：横目 [主人公横目]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[主人公ポーズ指]
;セリフは適当↓
[whosay name=&sf.girl_namae color="#cf5a7f"]
（思わず、聞き及んでしまいますね）[p]
[主人公ポーズ通常]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[whosay name="調香店主" color=%mp.color]
「ええ、彼は生真面目なんですよ。　苦労していた分にね。[r]
[sp]人にも努力を求めてしまう、たまにいる教師みたいな人ですね～」[p]
[主人公目パチ1回]
[whosay name="調香店主" color=%mp.color]
「おっと、話がそれてしまいましたね。　その浮かない源次郎様が、[r]
[sp]なんだっていいますとね」[p]
;そんなとき、店の前を通りがかった源次郎は、従妹の綾花と偶然再会し、花で励まされたという
[whosay name="調香店主" color=%mp.color]
「　『この花は、君が活けているのか？ 』 と、真剣に尋ねてくるのですよ」[p]
[whosay name="調香店主" color=%mp.color]
「あまりに神妙な顔で聞いてくるものだから、私、本当のことを教えてしまって」[p]
[whosay name="調香店主" color=%mp.color]
「どうやら、源次郎様あ、毎回、ここの生け花を見て励まされて[r]
[sp]いるみたいで、店の前で綾花様を一目でも見ようと寒空の
[sp]下、待っていたんですよ。 そうしたらね……」[p]
[主人公目パチ1回]
[whosay name="調香店主" color=%mp.color]
「そうしたら、なんと！[r]
[sp]綾花様と、お祖父様、四条源次郎様の[ruby text=い]従[ruby text=とこ]妹で、"婚約者候補"だったって[r]
[sp]ワケですよ」 [p]
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~シーン回送おわり~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[chara_mod name="bg" storage="toumei.gif"]
;回想シーン 効果セピア消す
[iscript]
//#tyrano_base > div.layer.\31 _fore.layer_fore
var lay1=document.getElementsByClassName("layer 1_fore");
lay1[0].style.webkitFilter = "sepia(0%)";
[endscript]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_kousi.jpg" time=2000 wait=false]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[四条ベース着物]
[四条微笑み]
[whosay name="調香店主" color=%mp.color]
「驚いちゃいましたよ。　とても素敵な縁を感じましたね」[p]
[whosay name="華織" color="olivedrab"]
「そうですね。　僕もそう思います。　"再会した"ってところにも、[r]
[sp]とても深い縁を感じますね」[p]
[四条笑顔]
#
華織様は私の顔をみると微笑んだ。[p]
;～～～～～～主人公柔微笑み～～～～～～～～
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：柔和な伏目 [主人公目伏柔]
;[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
;[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;～～～～～～主人公柔微笑み～～～～～～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様……）[p]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[四条微笑み]
[whosay name="調香店主" color=%mp.color]
「それ以来、記念日になると源次郎様はこっそりと手紙をもってここにやってきますよ」[p]
[whosay name="調香店主" color=%mp.color]
「歳のこともあって恥ずかしいのか、ツンケンしてますけど……[r]
[sp]本当は、とても仲の良い夫婦ですね……」[p]
[whosay name="華織" color="olivedrab"]
「ねぇ、[名前]さん」[p]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓目：横目 [主人公横目]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？　はい」[p]
[whosay name="華織" color="olivedrab"]
「あれから時々考えるようになったんだけど、人の幸せは、[r]
[sp]色々な人の想いによって繋がっているのかもしれないね」[p]
[主人公目閉]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;あの時て何?の説明
#
私は、この長い時の流れによる人の繋がりと共に、あの時にみたネリネの花と手紙に綴られた幸せな願いについて思い出した。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（幸せの訪れる日……)[p]
[主人公目伏柔]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね……感慨深いですね[r]
[sp]華織様のお祖母様とお祖父様が結ばれて、[ruby text=お]義[ruby text=とう]父様と [ruby text=お]義[ruby text=かぁ]母様が
出会って[r]
[sp]……華織様に出会えて」[p]
;その中には兄もいるけど省略
[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そんな風に考えると、とても素敵で長い年月の縁に思いを馳せてしまいますね」[p]
[whosay name="華織" color="olivedrab"]
「ふふ、つまり結婚ってすごいことなんだね」[p]
;主人公微笑んでうなづく
[主人公ポーズ通常]
[wait time=10]
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えぇ……」[p]
[主人公目通常]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(そういえば、私のお父様とお母様は、どの様にしてお近づきになられたのでしょう？）[p]
[四条退場]
;[暗転]
[chara_mod name="bg" storage="toumei.gif" time=2000 wait=false]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(お父様が帰ってきたら聞いてみようかしら）[p]
[主人公ポーズ通常]
[主人公目閉]
#
――それが、もしも、些細な出会いであっても、私は結納の時に感謝の念を抱くと思う[p]
[主人公退場]
#
;~~~~~~~~~~~~~~~~~~~~~~~~~~シーン主人公家の前~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;【背景】主人公邸 玄関
[chara_mod name="bg" storage="bg/bg_genkan.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[四条ベース着物]
[四条微笑み]
[主人公ポーズ通常]
[主人公通常]
[whosay name="華織" color="olivedrab"]
「今日は、急な誘いについて来てくれてありがとう。　おかげで素敵な話を[r]
[sp]聞くことができたよ」[p]
[主人公笑顔]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「こちらこそ。 素敵な時間をありがとうございます」[p]

[whosay name="華織" color="olivedrab"]
「その、名前さんが嫌でなければ、ですが……手を出してもらっていいですか？　」[p]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「手ですか？　」[p]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！！」[p]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：横の伏目 [主人公横伏目]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[四条目閉じ]
;退場したほうがいいかも？
#
華織様は、 手をとって口づけをする。[p]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[四条目にこ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「指輪は、また次の機会に、」[p]
[主人公困り照れ]
[四条口笑顔]
[whosay name="華織" color="olivedrab"]
「ふふ、[名前]さん、いい香りだね」 [p]
[四条口微笑み]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;淑女度で変更
[if exp="f.para_shujinkou_shukujodo >= 200"]
「華織様……」 [p]
[else]
「か、華織様こそ！」 [p]
[endif]
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「今度は正式に会いましょう　その時までにこの香りを覚えておくよ」[p]
[四条退場]
#
華織様は、手をとって門前まで送ると、会釈をして帰っていった。[r]
まだ首筋には、ほんのりと香りが残して……[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（このまま帰ったら、勘のいい磯野は、なんていうかしら……？）[p]
;【SE】うぐいす（ケキョケキョ）
[playse storage=tori_uguisu_pikyo.ogg loop=false ]
[主人公退場]
#
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
;おまけに飛ぶ？
;[whosay name="華織" color="olivedrab"]
;（帰ったら未来の君のために頑張らないと……）[p]
#
;@jump storage="sijyou/sijyou_omake_kai.ks"
[イベントシーン終了]
@jump storage="test_sijyou.ks"
[s]
*window_close
[cm]
[chara_mod name="girl_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[l]

;会話ウィンドウ表示
[chara_mod name="message_bg" storage=&f.message_storage time=1]
;機能ボタン表示
;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;メッセージレイヤを表示
[if exp="f.kaogura!='off'"]
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[endif]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[freeimage layer = 27]
[wait time=10]

[return]
