﻿;=============================================
;磯野に相談： 5月、他のアドバイスイベントが発生しないなら1度だけ発生
;=============================================
*replay_sijyou_5_1
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
;[call target=*start storage="macro_tati_zaizen.ks"]
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
#
私は、思い切って磯野に相談することにした。[p]
[主人公目パチ1回]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織お兄様のことを聞いていいかしら」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「はい。 四条華織様　のことでございますね」[p]


[whosay name=磯野 color="dimgray"]
;sijyou_funiyaと育ち故に全体的に余裕がある雰囲気より
「四条家は、現在では鋼鉄生産業で名を馳せておりますが、[r]
[sp]本来は華道の旧家でございます。[r]
[sp]四条華織様は、その流れを汲んだ華道家でいらっしゃいます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「お花のことにお詳しい……と幼い頃の記憶に残っておりましたが、[r]
[sp]そうでしたのね」
[主人公目パチ1回]
[p]

[whosay name=磯野 color="dimgray"]
「華織様は、四人御兄弟のうちの御次男でございます」[p]
;11_1_kaiで有り 

[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうでしたのね……![r]
[sp]でも、あの頃は、華織お兄様しか御見かけしませんでしたが……」[p]
;9/3で説明あり

[whosay name=磯野 color="dimgray"]
「私も詳しくは聞かされておりませんが、仲良くなられたら、[r]
[sp]そのあたりのお話も聞かせてくださるかもしれませんね」[p]
;文矢に話していないことを磯野が知っているというのを回避したい

;今は憧れの人の立ち位置で本人の内面までは気にならないのでここまでに
[whosay name=&sf.girl_namae color="#cf5a7f"]
「仲良くなれたら……いつか話をしてくださるのかしら？」[p]

#
[主人公目閉]
私は、華織お兄様と過ごしたあの頃を思い出す。[r]
兄のように、優しくて憧れだった華織お兄様。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
（でも、あの頃の四条様より、少し、お手紙の内容が……）[p]

[whosay name=磯野 color="dimgray"]
「その時の話題の御返答が芳しくなくても、[r] 
[sp]お嬢様との仲が深まった後に諦めずにお手紙を送られると」 [p]

「お互いの事をよく知るための[r]
[sp]大事なきっかけの一つになるかもしれません」 [p]
 
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
(お互いの事をよく知る……きっかけですか。[r] 
[sp]反応が良ろしくなくても時期をみて、続けてお手紙を[r]
[sp]出してみることも大事なのね)[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、どの様にお返事を書いたら良いかしら？」[p]

;手紙の語調について
[whosay name=磯野 color="dimgray"]
「昔のように『気軽に』書かれてみては、如何でしょう」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「気軽にですか？」[p]

（丁寧に書いていましたわ……）[p]

[whosay name=磯野 color="dimgray"]
[主人公通常]
「はい。　四条様にお気遣いになられるかと思いますが、[r]
[sp]"昔のように"『気軽に』書かれると良いかと……」[p]
#
[主人公照れ]
磯野は、まるで昔の私を思い出したかのように優しく微笑んだ。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「お手紙の内容については、どういったものが良いかしら？」[p]

[whosay name=磯野 color="dimgray"]
「四条様は、お花がお好きなようですから、[r]
[sp]お手紙のやりとりについては"季節の話題"を送ってみられては[r]
[sp]如何でしょうか？」[p]
[主人公目パチ1回]
[whosay name=磯野 color="dimgray"]
「また、お話があうように"華道のお稽古"も、ほどほどに重ねておく[r]
[sp]と良いでしょう」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「お稽古だけではお嬢様も気が滅入ってしまわれると思います。[r]
[sp]気分転換に"散策"もお勧めします」[p]
[主人公目パチ1回]

「"秋"の色合いを眺められますと"華道"のお稽古の手助けにも[r]
[sp]なるかもしれませんね」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「わかったわ。　ありがとう磯野。[r]
[sp]磯野のおかげで、お返事を書く勇気が沸いてきたみたい」[p]
[whosay name=磯野 color="dimgray"]
「私もお嬢様の笑顔が励みでございます」[p]
[主人公目を開く]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（"季節の話題"、"華道のお稽古"、"秋の散策"ね)[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=磯野 color="dimgray"] 
「他にお聞きになりたいことは、ございますか？」[p]
[if exp="f.from_common_5_1 == 1"]
@jump storage="common_5_1.ks" target=*select
;お相手について相談するかの選択肢に戻ります
[endif]
(「四条テスト」から開始したため、選択肢には戻らずに[r]
[sp]テストメニューへ戻ります）[p]
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
