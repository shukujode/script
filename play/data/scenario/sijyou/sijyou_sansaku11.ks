;華衣忠告イベント後、華道30以上ならいつでも
;=======================お芝居の準備中です==================================
*sansaku
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*bonyou storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;[call target=*start storage="macro_tati_sijyou.ks"]
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
町に出た。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(今日は橋に行ってみようかしら？)[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
[主人公目閉]
[暗転]
[chara_mod name="bg" storage="bg/bg_machi_hasi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[主人公目通常]
#
『見返り橋』にやってきた。[r]
橋の向こう側に目を向けると十二か十四の[ruby text=お]乙[ruby text=とめ]女[ruby text=ご]子達が列を成して歩いている。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(？ なにかしら？)[p]
[whosay name="女学生の教師"]
「皆さん、列を乱さず歩いてください！  今日は[r]
[sp]社会見学ということを忘れないでください！」[p]
[whosay name="女学生その壱"]
「[ruby text=み]美[ruby text=はな]華さま、待ってください。[r]
[sp]そのように歩かれては付いていけませんわ。……私、寄宿舎から[r]
[sp]出るのは初めてですのに」[p]
#
寄宿舎の女学生なのだろうか、特徴のあるセーラー服を纏った[r]
彼女達は、目に見えるもの全てに畏怖と好奇心を持った態度で、[r]
たどたどしく歩いていた。[p]
[whosay name="女学生その壱"]
「[ruby text=み]美[ruby text=はな]華さま随分と足取りが軽やかですのね」[p]
[whosay name="巻き毛の女学生"]
「ふふ。だって私の家はこの近くにありますもの」[p]
;#
;ゆるやかなウェーブのかかった髪を靡かせる少女は、どこか見覚えある人に似ていた。[p]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;(どこかで見たような？ 気のせいかしら？[r]
;[sp]でも年下の方と面識はないですし……？)[p]
;[whosay name="女学生その壱"]
「[ruby text=み]美[ruby text=はな]華さまのおしゃっていらしたお兄様も、[r]
[sp]こちらに？」[p]
[主人公目パチ1回]
[whosay name="巻き毛の女学生"]
「えぇ！　お花がとっても好きな優しいお兄様なの[r]
[sp]ふぅ……ただあのひとつ上の兄がいなければ、……お兄様の元に帰りたい[r]
[sp]のに」[p]
[whosay name="女学生その壱"]
「どうかされましたの？」[p]
[主人公目パチ1回]
[whosay name="巻き毛の女学生"]
「実は、もう一人の兄が粗暴者で……」[p]
[whosay name="女学生の教師"]
「こら！ そこも列を乱さない！ はしたない！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
[主人公目パチ1回]
(賑やかですわね)[p]

[イベントシーン終了]

[if exp="tf.okeiko_gamen==true"]
@jump storage="sansaku.ks" target=*sansaku_machi_seika
[else]
[イベントシーン２終了]
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
[current layer="message0"]
[freeimage layer = 27]
[wait time=10]
[return]
