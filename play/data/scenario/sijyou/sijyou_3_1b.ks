*test
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[if exp=tf.test_sijyou==true]
【！】テストページからはじめます。変数を代入しますか？[p]
[link target=first]【１】代入しない[endlink][r]
[r]
[link target=test_str]【２】淑女度高め(終了後にもどします)[endlink][r][r]
[link target=test_str2]【３】緊急用：淑女度を１(戻しません)[endlink][s]
*test_str
[er]
元パラを一時変数に退避します[p]
[eval exp="tf.shukujodo=f.para_shujinkou_shukujodo"] 
元パラは[emb exp="tf.shukujodo"][r]
;一時敵に変数に代入
[eval exp="f.para_shujinkou_shukujodo=200"]
現在の淑女度は[emb exp="f.para_shujinkou_shukujodo"]です[p]
@jump target=first
[s]
*test_str2
こちらは途中で回線がきれた場合の緊急用リセットです。[r]
元パラは[emb exp="f.para_shujinkou_shukujodo"]です[p]
[eval exp="f.para_shujinkou_shukujodo=1"]
現在の淑女度は[emb exp="f.para_shujinkou_shukujodo"]です[p]
[endif]

*first
[er]
;～～～～～～～～～～～～～シーン料亭～～～～～～～～～～～～～～～～～
;【テキスト全画面】黒茶・和紙風背景に白文字
[テキスト全画面白文字]
;華道展を終わらせ(昼過ぎまで)
華織が用意した食事の場で、その後、四条家と鷹司家で食事することとなった。[p]
;華道展から食事の流れ思いつかない　終わりまで家族を待たせるわけにもいかないし
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
[イベントシーン構築]
;[料亭]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]
[主人公ポーズ通常]
[主人公通常]
#
;再度,ご迷惑をおかけしたことを詫びる四条家[p]
[if exp="sf.BGM=='ON'"]
;【BGM】めでたく候（お正月などめでたいシーンに
[playbgm storage="oshougatsu_medetaku.ogg" loop=true]
[eval exp="f.bgm_storage='oshougatsu_medetaku.ogg'"]
[endif]
;[whosay name="四条祖父" color="#888898"]
;「」[p]
;[whosay name="四条祖母" color="#888898"]
;「」[p]
;[whosay name="華織" color="olivedrab"]
;「」[p]
[whosay name="四条父" color="#9B608B"]
「どうか[emb exp="sf.father_name"]さん。これからも、華織と娘さんとの[r]
[sp]お付き合いをお願いできないだろうか……」[p]
;お付き合いをお願いできないだろうかきいてくる
[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、聞くまでもないが、華織くんのことを選んで良かったかね？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
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
「お父様……」[p]
#
私は、自然と華織様と見つめ合った[p]
[主人公照れ目普通]
[whosay name="華織" color="olivedrab"]
（[名前]さん）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「……はい。華織を選んで、良かったと思います」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「娘がこう言うのだ。 嫁ぐ娘を例え寂しくなったとしても、[r]
[sp]"勿論"と言わねば、父親として廃る。[r]
[sp]さぁ、未来の夫婦に祝杯を上げようではないか！」[p]
#
父の口上を起点に、晴れやかな空気が流れる。[p]
私は、もう一度、華織様と見つめ合った。[p]
[whosay name=文矢 color="#538a8a"]
「[名前]、よかったね」[p]
[fadeoutbgm time=3000]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
#
乾杯の音頭も終えたころ、華織が改めて、兄弟を紹介する。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】みちくさ（楽しいお出かけの場面、すこしコミカルな場面などに
[playbgm storage="michikusa.ogg" loop=true]
[eval exp="f.bgm_storage='michikusa.ogg'"]
[endif]
;[料亭]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]
[whosay name="華織" color="olivedrab"]
「文也、[名前]さん。[r]
[sp]渡仏(とふつ)やら留学中で紹介できてなかった兄弟を改めて、紹介するね……」[p]
[whosay name=文矢 color="#538a8a"]
「？ 華織、何か疲れてないかい？」[p]
#
四条兄弟との顔合わせで華織はひやひやする[p]
[whosay name="華織" color="olivedrab"]
「こちらが、僕の兄の一華」[p]
[whosay name="四条一華" color=%mp.color]
「長男の四条一華です。外交官をしており、普段は仏蘭西にいます。[r]
[sp]それにしても、君のような美しい方が義妹になって嬉しいよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい、よろしくお願いします」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(一華様は、やはり、ひとつ上の兄だけに華織様によく似ていらっしゃるわ）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(ただ、雰囲気そのものは、華織様の素朴さを抜いたのような……）[p]
[whosay name="華織" color="olivedrab"]
「こう見えて、根は厳しい人だからね……？」[p]
[whosay name=文矢 color="#538a8a"]
(あぁ、この方が華織の言っていた、お兄さんか)[p]
[whosay name="四条一華" color=%mp.color]
「華織。もしかして妬いたかい？」[p]
[whosay name="華織" color="olivedrab"]
「兄さんは、好きなお酒でも飲んでて下さい」[p]
[whosay name="華織" color="olivedrab"]
「ほら、[華衣]も挨拶して」[p]
#
華織様の横で、挨拶を始めたのは、[華衣]さんだった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（[華衣]さん……)[p]
慣れない場と、ばつの悪さで顔を下げていると言った様子であった。[p]
[whosay name="四条 華衣" color=%mp.color]
「こんにちは、また会ったな……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「こんにちは、元気にされてましたか？」[p]
[whosay name="四条 華衣" color=%mp.color]
「まぁ。元気にしてた……[r]
[sp]お前が、義姉になるなら悪くないと思う……よろしく」[p]
#
うなづくように顔を下げると、兄に向き直し、驚くほど丁寧に挨拶を交わす。[p]
[whosay name="四条 華衣" color=%mp.color]
「お義兄さん、華衣と申します。よろしくお願いします。[r]
[sp]先日は[名前]さんにご迷惑おかけして申し訳ありませんでした」[p]
[whosay name=文矢 color="#538a8a"]
「いえいえ。華織、素直で可愛い弟じゃないか」[p]
[whosay name="華織" color="olivedrab"]
「全く、不詳で……自慢の弟だよ」[p]
[whosay name="四条 華衣" color=%mp.color]
「……」[p]
[whosay name="華織" color="olivedrab"]
「そうやって、すぐに顔にでるとこ、とかね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(？　そうなのかしら？)[p]
[whosay name="四条 華衣" color=%mp.color]
「うるさい……」[p]
[whosay name="華織" color="olivedrab"]
「ほら、美華も挨拶なさい」[p]
#
[華衣]さんと距離をとっていた少女が華織の隣に現れる[p]
[whosay name="四条 美華" color=%mp.color]
「こ、こんにちは……末妹の美華と申します。[r]
[sp]ふ、普段は、聖白百合の寄宿舎にいます……華織お兄様からお手紙で聞いて、[r]
是非、[名前]様にお会いしたかったです」[p]
#
華織様のような、ほんのりとウェーブがかかった長い髪の少女は、[r]
丁重にも、三つ指をついて挨拶をした。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、宜しくお願い致します」[p]
[whosay name="四条 美華" color=%mp.color]
「～～!」[p]
[whosay name="華織" color="olivedrab"]
「美華、緊張するからって、僕の後ろに隠れないで」[p]
[whosay name="四条 美華" color=%mp.color]
「こ、今後とも、よろしくお願いします」[p]
[whosay name="華織" color="olivedrab"]
「……箱入り娘で、ごめんね」[p]
[fadeoutbgm time=3000]
;疲れた、難しい

;～～～～～～～～～～～シーン料亭・庭～～～～～～～～～～～～～～～～～～～
#
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
お兄様に言われた私達は二人で庭へと出る。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]
;【背景】庭園
[chara_mod name="bg" storage="bg/bg_teien_ishidatami.jpg" time=500]
[eval exp="f.haikei_credit=''"]
;結
;食事の後。二人になる　夕方[p]
;個性的な兄弟の話をして、心配する華織。主人公は兄弟を好意的に評する
後ろの室内からは、賑やかな声がする。[p]
[whosay name="華織" color="olivedrab"]
「ふぅ……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お疲れさまです」[p]
[whosay name="華織" color="olivedrab"]
「名前さん、ありがとう。
僕が言うのも、なんだけど、個性的な兄弟で、君も疲れたましたよね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、兄弟が沢山いらっしゃって、驚きました」[p]
[whosay name="華織" color="olivedrab"]
「久しぶりに皆がそろったのは良かったのですが、[r]
[sp]かく次男とは、中間管理職のようなものなのかと考えてしまいましたよ」[p]
;～～～～～～～～淑女度低い～～～～～～～～
[if exp="f.para_shujinkou_shukujodo<200"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「面白い方達ですね」[p]
[whosay name="華織" color="olivedrab"]
「別宅に住むから、そこは安心してください……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ふふ。ですけど、華やかなお兄様方に囲まれて美華様は幸せでしょうね」[p]
[else]
;～～～～～～淑女度高め～～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様が、華織様であらせることに納得がいきました」[p]
[whosay name="華織" color="olivedrab"]
「そうですか？ 」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、一華様は、社交界の花形のような華やかさ持っていて、[r]
[sp]華織様はそんなお兄様に惹かれて、優しい華やかさをお持ち[r]
[sp]なられたのでしょう」[p]
[whosay name="華織" color="olivedrab"]
「確かに。僕は、有能な兄の事を尊敬してます。同時に乗り越えたい人でもありますね……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そんな華織様の弟様にあたる、華衣様は、華織様の素朴さをそのままに引き継がれたのですね」[p]
[whosay name="華織" color="olivedrab"]
「……華衣は、僕の悪いところを見破っていたのかもしれませんね……」[p]
[whosay name="華織" color="olivedrab"]
「今迄は、必要以上に甘やしすぎてたから、つかず離れず見守っていきたい……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華やかなお兄様方に囲まれて美華様は、幸せでしょうね」[p]
[else]
;～～～～～～～～～～～～～～～～
*common7
[whosay name="華織" color="olivedrab"]
「名前さん。君って人は、[r]
[sp]時々、僕より大人びて見えますね……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、そうでしょうか？」[p]
[whosay name="華織" color="olivedrab"]
「ええ。まだ僕が、知り得てない君をもっと知りたい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"][p]
「そんな……私は今のままでも充分に、華織様に知って頂いてますわ[r]
[sp]ですから、華織様のことをもっと私に教えてください」[p]
;しんどい
[whosay name="華織" color="olivedrab"]
「僕のすべては、これからは、いつだって君の前にある」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？ 華織様？」[p]
[whosay name="華織" color="olivedrab"]
「賑やかな家族、まだまだ未熟だけど、目指す道の華道。[名前]さんへの愛。
それが僕の持っているすべて……」[p]
[whosay name="華織" color="olivedrab"]
「[名前]さん。こんな僕の傍にいてくれてありがとう。[r]
[名前]さんのおかげで、もう一歩先に進めます」[p]
[whosay name="華織" color="olivedrab"]
「これからは、僕の全てをもってして、君に恋を綴ります」[p]
;エピローグの回収↑
;いい感じになって見つめ合う二人。
;沈丁花
[chara_mod name="bg" storage="bg/B4nFWraU42/jincyou_ge.jpg" time=2000 wait=false]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様……」[p]
[whosay name="華織" color="olivedrab"]
「[名前]さん……」[p]
;華妹が華衣と喧嘩しだしたので戻るふたり　爽やか！
[whosay name="四条 美華" color=%mp.color]
「華織お兄様～～！　[華衣]が私のこと、ぶった～～～！！」[p]
[whosay name="ふたり" color=%mp.color]
「「！！」」[p]
[whosay name="四条 華衣" color=%mp.color]
「どんくさいから、ちょっと小突いただけだろ！」[p]
;【背景】庭園
[chara_mod name="bg" storage="bg/bg_teien_ishidatami.jpg" time=500]
[eval exp="f.haikei_credit=''"]
[whosay name="華織" color="olivedrab"]
「……帰りましょうか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]

;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
[イベントシーン構築枠茶色]
;料亭廊下
;[料亭]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]
#
文矢が華織に話しかけた。[p]
[whosay name=文矢 color="#538a8a"]
「これからも妹のことをよろしく。もう泣かしたらダメだよ」[p]
#
華織は深くうなづく。[p]
[whosay name="華織" color="olivedrab"]
「文也、[名前]さんに会わせてくれてありがとう、君という友人がいて本当に幸せだ」[p]
;幸せな悩み？
[whosay name=文矢 color="#538a8a"]
「さて。これから訪れる、幸せな悩みについて、相談に乗ろうか？」[p]
[whosay name="華織" color="olivedrab"]
「そうだね。けど、まずは君がまた悩んでいることがあったら、僕が助けるよ」[p]
[whosay name=文矢 color="#538a8a"]
「そうだなぁ……」[p]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
新しく訪れる幸せな悩みについて、ふたりの話は、夜も更けていった。[p]
[イベントシーン終了]

[if exp=tf.test_sijyou==true]
;元パラを一時変数からもどす
[eval exp="f.para_shujinkou_shukujodo=tf.shukujodo"] 
[endif]

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
[current layer="message0"
[freeimage layer = 27]
[wait time=10]
[return]
