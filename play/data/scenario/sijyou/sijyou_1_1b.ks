*test
[call target=*start storage="tyrano.ks"]
[stopbgm]
[call target=*1_1 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[イベントシーン構築]
テストページからはじめます。[p]
;=======================================================================
*start
[eval exp="f.kaogura!='off'"]
;会話ウィンドウ消去
[freeimage layer = 14]
;機能ボタン消去
[clearfix]
[bg storage="toumei.gif" time=1000]
;==========================================================================
[イベントシーン構築枠茶色]
#
[freeimage layer = 1]
[wait time=10]
[背景_四条玄関]
;[chara_mod name="bg" storage="bg/ B4nFWraU42/bg_sijyou_genkan_hole.jpg"]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
――四条邸にて。[p]
[whosay name="女中"]
「お帰りなさいませ。 華織様」[p]

[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]

*jump_ok
[current layer="message0"]
[resetfont]
「はい」[r]
移動します。[p]
[cm]
@jump target=*seen_end
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]

[whosay name="華織" color="olivedrab"]
「ただいま」[p]
#
正月飾りのお披露目や、[r]
親族や四条家を贔屓にしてくださる方々の挨拶も終えた頃、[r]
女中達を従えた　女中頭が楚々と僕の前に現れた。[p]

[whosay name="女中頭"]
「お寒い中、お疲れになりましたでしょう。[r]
[sp]今、暖かいものをご用意しております」[p]

[whosay name="華織" color="olivedrab"]
「ありがとう」[p]

[whosay name="女中頭"]
「それから……[華衣]様から、こちらをお預かりしております」[p]
#
女中頭から手渡されたもの ――[r]
それは、漆に山水の蒔絵が描かれた、見覚えのある文箱だった。[p]

[whosay name="華織" color="olivedrab"]
「華衣がこれを？」[p]
#
記憶を辿って思い出せば、これは華衣にあげた文箱だ。[p]

[whosay name="女中頭"]
「……はい」[p]
#
控えめに女中が返事をする。[r]
これ以上、深く尋ねては差し支えがあるのだろう。[r]
僕は、そのまま[ruby text=そ]文[ruby text=れ]箱を受け取った。[p]


[whosay name="華織" color="olivedrab"]
（もう、[華衣]には、いらないということだろうか……）[p]
#
女中達が去っていく中、そっと文箱の蓋をあける。[p]

華衣
バラバラになった手紙が台紙の上で修復されていた。

;==========================================================================

;=================================================================================_
*seen3

[イベントシーン終了]

[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[else]
[イベントシーン終了４]
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
