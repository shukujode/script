*replay_sijyou_2_2
*start
*test
[iscript]
$(".1_fore").empty();
[endscript]
[stopbgm]
;暗転プリロードサブルーチン
[call target=*2_2 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[暗転]
;背景をセット予定↑
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;====================================================
*scene1
;------------------------------------
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ。 少し、場酔いしたようで……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓効果：無し(通常) [主人公効果消]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
(はしゃぎすぎては、いけないわ)[p]
[whosay name="華織" color="olivedrab"] 
「申し訳ございません、[r]
[sp]無理をさせてしまいましたね。 休みましょうか」[p]
#
;休憩室
華織様は、私を休憩室のソファに横たわらせ、心配そうに手を取った。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
「ごめんなさい。 [r]
[sp]私、今日の日をとても楽しみしていたのに」[p]
[whosay name="華織" color="olivedrab"] 
「謝らないで下さい。[sp]僕も少し浮かれてました。[r]
[sp]今はゆっくり休んで下さい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今度はもっと上手くできるかしら……)[p]

#
恥ずかしさに打ち震えていると、[r]
窓の外から光とともに大きな音が鳴り響いた。[p]
;【SE】花火(打ち上げ：小)
[playse storage=hanabi_utiage_s.ogg loop=false ]

驚いて見上げれば、大輪の花火が、陰った空を[r]
煌びやかに照らしていた。[p]

[whosay name="華織" color="olivedrab"] 
「花火、ですか。[sp]昔、[名前]さんと興じましたね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね」[p]
#
あの時の華織様の横顔が忘れずに心に残っている。[p]
[テキスト全画面白文字無背景]
;背景 線香花火
[背景_線香花火]
花火に照らされた華織様の横顔。[p]
;【SE】花火(線香花火)
[playse storage=hanabi_senkou.ogg loop=false ]
;背景戻す
[暗転]
ふとした瞬間が、とても綺麗な華織様への[r]
届かないはずだった淡い思い。[p]
[イベントシーン構築]
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[iscript]
$('.junbi_girl').remove();
[endscript]
[主人公目閉じ]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(私は華織様に憧れて、華織様のように）[p]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
(いえ、華織様に似合うような淑女になりたかった……)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
「今、私は華織様に似合う大人になれたでしょうか？」[p]
#
今日の失敗を忘れられず、私は華織様の手を力強く握った。 [p]
[whosay name="華織" color="olivedrab"] 
「[名前]さんは、そのままでも可愛らしい方ですよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ、私はあの花火のように華やかな女性になりたいのです」[p]
[whosay name="華織" color="olivedrab"] 
「[名前]さん。 昔は華やかな大筒花火の方がすきでした」[p]
[whosay name="華織" color="olivedrab"] 
「ですが、[r]
[sp][名前]さん達に誘われて初めて興じた線香花火はとても印象的で」[p]
[whosay name="華織" color="olivedrab"] 
「僕は、線香花火も好きになりましたよ。[r]
[sp]暗闇を照らしてくれる、可憐な花のように思えませんか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうでしょうか……」[p]
[whosay name="華織" color="olivedrab"] 
「大輪の花も素敵ですが、[r]
[sp]側で輝いてくれる小さな花をまた愛でたいのです」[p]
#
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：通常より大きめに開いた状態[主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
華織様は、そっと頭を撫で、耳元で囁いた。[p]
[whosay name="華織" color="olivedrab"] 
「でも、今日の[名前]さんは、[r]
[sp]いつもと違って華やかで、[r]
[sp]目にいれても惜しくないほどに美しかったですよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
#
どうしてか騒がしいはずの花火の音が聞こえず、[r]
胸の鼓動だけが鳴り響いていた。[p]
;クリアフラグ
[eval exp="sf.event_sijyou_2_2_bazar = 1"]
[イベントシーン終了]


[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[else]
@jump storage="test_sijyou.ks"
[endif]
[s]

;------------------------------------------------
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
[メッセージウィンドウ上ボタン表示]
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
