﻿;=============================================
;磯野に相談： 5月、他のアドバイスイベントが発生しないなら1度だけ発生
;=============================================
*replay_zaizen_5_1
;↓◆B4nFWraU42さん作イベント冒頭プリロード箇所を使用させていただきました。◆B4nFWraU42さん、ありがとうございます。
;=======================お芝居の準備中です==========================================
[stopbgm]
[eval exp="f.from_common_5_1 = 0"]
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500] 
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 

[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
*seen1
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[主人公通常]
[whosay name=磯野 color="dimgray"]
「財前美彬様のことですね 」[p]
[主人公目パチ1回]
[whosay name=磯野 color="dimgray"]
「財前美彬様は、やり手の銀行家とお聞きします」[p]
;↑伝聞の形に変更し、文章を読みやすい長さに分けました(◆jsYiJcqRkk
「財前様の銀行の投資は我が国でも一歩先を行っていると言われ、[r]
[sp]お手本にされる方もいらっしゃるそうです」[p]

[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（凄い方なのね……）[p]
「財前様のお父様も銀行家なのですか？」[p]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「いいえ、財前家は代々呉服屋でございました。[r]
[sp]お父様は、全国の職人達から技術を集結させ、紡績工場を設立し、[r]
[sp]衣服の生地の継承、開発をされているとお聞きしております」[p]

「財前様は、初めは紡績工場の資産管理をされ、[r]
[sp]銀行を興したのは、資産管理のシステムを円滑にする為でごさいます」[p]

[主人公眉下げ下]
[主人公目伏]
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、何となくわかりました。[r]
[sp]お人柄や経歴についても深く聞かせて頂戴」[p]

[whosay name=磯野 color="dimgray"]
「お母様が[ruby text="ド"]独[ruby text="イツ"]逸出身の方だそうで、偏見などに苦労されたそうでございますが、[r]
[sp]並々ならぬ努力をされ、社交にも長けたこともあって、[r]
[sp]社交界での今の地位を築き上げた方です。[p]
[sp]今年で、二十三歳でしたか」[p]

[主人公目パチ1回]
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「聞けば聞くほど私とお手紙を交わしている事すら[r]
[sp]身に過ぎているわ」[p]

[whosay name=磯野 color="dimgray"]
「そんな事はございません。[r]
お嬢様が頑張れば認めて下さる方、ではないでしょうか」[p]

#
磯野は優しく微笑む。[p]

[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……どのように頑張ればよいのでしょうか？」[p]

[whosay name=磯野 color="dimgray"]
「礼儀を重んじる方だとお聞きしています[r]
お稽古は『礼法』をほどほと上げるとよいでしょう」[p]

「お稽古だけではお嬢様も滅入ってしまうと思います。[r]
[sp]気分転換に"散策"もお勧めします」[p]

[主人公通常]
[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お手紙はどのように書けばよいでしょうか？」[p]

[whosay name=磯野 color="dimgray"]
「何よりも礼儀を重んじる方なので今は勿論のこと、[r]
[sp]親しくなってからも『丁寧に』書かれてはどうでしょうか？」[p]

[主人公眉下げ下]
「話題や、便箋の種類についてはどうしましょうか？」[p]

[whosay name=磯野 color="dimgray"]
「財前様は仕事を大事にされているとお聞きしています。[r]
[sp]仕事やそれに関する事柄にについてはやはり熱をいれて[r]
[sp]お返事を頂けるのではないでしょうか」[p]

「また、便箋の種類は特に気にされる方ではないと思いますが、[r]
[sp]手紙の話題などに好まれる花など察し、[r]
[sp]選ばれるとよいでございましょう」[p]

[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう磯野。[r]
[sp]財前様の事を聞いて、お手紙を書きたくなりました」[p]

[whosay name=磯野 color="dimgray"]
「私もお嬢様の笑顔が励みでございます」[p]
[主人公目を開く]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（"仕事の話題"、"礼法のお稽古"、"散策"ね)[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=磯野 color="dimgray"] 
「他にお聞きになりたいことは、ございますか？」[p]
[if exp="f.from_common_5_1 == 1"]
@jump storage="common_5_1.ks" target=*select
;お相手について相談するかの選択肢に戻ります
[endif]
(「財前テスト」から開始したため、選択肢には戻らずに[r]
[sp]テストメニューへ戻ります）[p]
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
[locate x=580 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=650 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=730 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=810 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=880 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;[メッセージウィンドウ上ボタン表示]
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
