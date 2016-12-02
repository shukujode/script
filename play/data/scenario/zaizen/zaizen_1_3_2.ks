;=============================================
;イベント８、８回目【新聞の記事に載る】１月３週　数日後　財前視点
;=======================お芝居の準備中です=======================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*1_3_2 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
;【背景】洋館居間
;変更してください↓
;[chara_mod name="bg" storage="bg/room_zaizen_ima.jpg"]
[chara_mod name="bg" storage="bg/test_room_zaizen_ima.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版枠茶色]
#
;【立ち絵】財前：真剣　;変更してください
;[財前サイズ通常]
[財前ベーススーツ]
[財前通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

[whosay name="女中"]
「美彬様、新聞をどうぞ」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「ああ」[p]

（各新聞社には釘を打ってあるから、下手な事は書いていないだろうが……）[p]

#
主要な各新聞社の記事をチェックする為、朝一番に新聞を読む習慣となっている[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

;【立ち絵】財前：驚
[whosay name="財前美彬" color="#7a65b2"]

「この記事は！」[p]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】;[新聞] 裏で画面構成 test_bg_sinbun.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=1 y=1 storage="bg/test_bg_sinbun.jpg" time=1000 visible=true]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

[sp]国の根底を揺るがす[r]
この銀行の取り付け騒ぎについて[r]
多くの方が、恐慌状態となり、[r]
暴動直前までいく騒動となり[r]
心が痛む思いです。[r]
[r]
[sp] 大好きな町の人々が暗い顔をし、[r]
また銀行に憤る姿をみました。[p]
確かに多くの銀行が放漫な経営をし、[r]
預金者のお金まで企業と癒着し、[r]
倒産を免れるため、隠ぺいしてきたことは[r]
許されることではありません。[p]

[sp]私の大切な方は[r]
とある銀行の頭取をしています。 [r]
こう書けば皆は[r]
私に聞く耳をもたなくなるでしょうか？[r]
[r]
けれど私は訴えずはいられません。[p]
[sp]私の大切な方のの[r]
銀行は堅実な営業をしてきました。[r]
彼は取り付け騒ぎの騒動で[r]
忙しい毎日を送りながら[r]
事態の収拾を図り、預金者、[r]
皆のことも考えています。[p]

[sp]政府も勅令を出しています。[r]
皆落ち着いて考えて行動して[r]
この騒ぎを収めて欲しいと思います。[r]
私も一人一人が考えて落ち着きを取り戻し、[r]
元の明るい町に戻ることを[r]
心から祈ってやみません[r]
（新聞社に寄せられた１６歳の少女の声より）[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
;【SE】紙に触れる（パラリ）
;[playse storage=paper_open.ogg loop=false ]
;メッセージをもどします
[resetfont]
[freeimage layer = 29 time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;[call target=*start storage="macro_tati_zaizen.ks"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[call target=*start storage="macro_tati_zaizen.ks"]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================

;【立ち絵】財前：驚
[財前驚き]
[whosay name="財前美彬" color="#7a65b2"]
（大切な方が銀行の頭取……文章の雰囲気が[名前]さんらしい）[p]

[財前眉ひそめ]
（まさか、[名前]さんが？）[p]

#
そして複数の新聞が読者欄に[ruby text=とど]留まらず、[r]
前面に彼女の投稿した記事を載せていた。[p]

;前面に彼女の書いた投稿した記事を載せていた[p]上にします

#
各新聞社の記事は、どれも人の感情に訴える内容で[r]
彼女の気持ちが胸に迫るように伝わってきた。[p]

;#
;どれも各新聞社の記事を読みつつ人の感情に訴える記事で[r]
;彼女の気持は胸にせまるものがあった[p]上にします

;【立ち絵】財前：目閉じ
[財前目閉じ]
「……[名前]さん」[p]

（きっと[名前]さんだろう。[r]
[sp]……今すぐ彼女に会いに行きたい）[p]

（この沸き上がる熱い気持ちは何だろうか）[p]

[fadeoutbgm time=3000]

#
―― この日を境に取り付け騒ぎが、沈静化していく[p]

;===============================================================
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_zaizen.ks"
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
