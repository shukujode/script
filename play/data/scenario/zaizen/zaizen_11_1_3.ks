;好感度一定以上 zaizen_11_1_2.ksからの続きです
;=======================お芝居の準備中です==========================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*11_1_3 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
;【背景】パーティ会場の控室
[chara_mod name="bg" storage="bg/zaizen_paty_hikae.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[財前ベース燕尾服]
[財前通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
これはテストです。実際はつづきからなので、実際との音楽流れ方が違います[p]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

*seen_1
[er]
;本編ではここ↓に飛んできます。そのためのスクリプト　
;============================================================

#
財前様は私の手を解いて言った。[p]


;【立ち絵】財前：冷ややか
[whosay name="財前美彬" color="#7a65b2"]
「[名前]さん、[r]
[sp] 私の言いたいことは分ってますか？」[p]

;【立ち絵】主人公：目伏せ落ち込み
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、 私は貴方との約束を破りました」[p]

（きっと私の事は許してくれないわ）[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「分っているなら、 なぜ母を追いかけたのですか？」[p]

;【立ち絵】主人公：目伏せ落ち込み
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「居ても立っても居られなかったのです」[p]
;【立ち絵】主人公：真剣
[主人公伏目]
[主人公眉下げ下]  
「でも後悔はしていません」[p]

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
[財前ため息]
「お人よしですね」[p]

;【立ち絵】主人公：微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏柔]
[主人公口ほほえみ]
「そうかもしれません、[r]
[sp] けれど財前様がお母様を許せて良かったです」[p]

;【立ち絵】主人公：真剣
[主人公通常]
「私との縁談を破棄しますか？」[p]

[財前通常]
#
財前様は考え込むように暫く黙っていた。[r]
私は黙って財前様を見つめ、次の言葉を待っていた[p]

[whosay name="財前美彬" color="#7a65b2"]
;【立ち絵】財前：ため息
[財前ため息]
「まあ今回は大目に見ましょう」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚
[主人公驚]
「……！」[p]

;【立ち絵】財前：微笑み
[whosay name="財前美彬" color="#7a65b2"]
[財前微笑み]
「驚く事ですか？ 貴方を手放すには惜しいと思います。[r]
[sp][名前]さんは芯も強い。[r]
[sp]祖母と付き合うには貴方ぐらいの方が丁度いい」[p]

;【立ち絵】主人公：驚
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公伏目]
[主人公眉下げ下]
[主人公頬染め]
（財前様の柔らかな温かい微笑みを初めて見た）[p]

;【立ち絵】主人公：目伏せ頬染
[主人公ほほえみ]
（とても優しい微笑みだわ）
[主人公目通常]
[p]

[whosay name="財前美彬" color="#7a65b2"]
;【立ち絵】財前：通常
[財前通常]
「どうしたんですか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
「何でもありませんわ」[p]

[whosay name="財前母"]
「まだパーティは続いています。[r]
[sp]貴方達も一曲踊ってはどうかしら？」[p]

[whosay name="財前美彬" color="#7a65b2"]
;【立ち絵】財前：驚き
[財前驚き]
「またどうしてそんなことを？」[p]

[whosay name="財前母"]
「アルベルト、たまにはパーティに華を添えるのもいいでしょう？」[p]

[財前通常]
「立ち話ばかりも何だし、貴方達ももっと親睦を深めたらいいわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚
[主人公効果消]
[主人公驚]
「私は踊ったことありません」[p]

[whosay name="財前母"]
「アルベルトのリードは上手よ。[r]
[主人公口通常]
[sp][名前]さんも簡単なステップぐらいなら、すぐ覚えれるでしょう」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
[財前目伏]
「……よくご存じで」[p]

[whosay name="財前母"]
[財前通常]
「社交界は広いようで狭いわ。[r]
[主人公眉通常]
[sp]いつも貴方の事を気にかけてました」[p]

[主人公通常]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「私は貴方に対してわだかまりが、完全に消えた訳ではありません」[p]

[whosay name="財前母"]
「ええ、でもこれからは、わだかまりが消えるように[r]
[sp]努力するつもりよ」[p]

;【立ち絵】財前：目伏せ
[whosay name="財前美彬" color="#7a65b2"]
[財前目伏]
「……どうぞご自由に[r]
[sp][名前]さん 、行きましょう」[p]

#
今度は財前様が私の手を取り、私達は手を繋ぐ。[p]

;【立ち絵】主人公：目伏せ微笑み頬染め
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（手を繋ぎ隣に立っているのが、こんなにも嬉しい……）[p]

;====================================================================================
[暗転２ storage="bg/test_zaizen_paty1.jpg" time=1500]
;【背景】パーティー会場
[chara_mod name="bg" storage="bg/test_zaizen_paty1.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[暗転２終了]
;====================================================================================
#
階段を下り、パーティ会場に戻る。[r]
まだ余興の時間は、続いていて皆楽しそうに歓談や[r]
ダンスを踊っていた。[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
[財前通常]
「……こんな目立つ場所で、母の話などもう十分です[r]
[sp]母の言葉に従うのは癪ですが、ダンスを教えましょうか？」[p]

;【立ち絵】主人公： 驚
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「でも！」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
[主人公口通常]
「簡単なステップならすぐに覚えられるでしょう。[r]
[sp]今後の為にもいいでしょうし」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公眉下げ下]
[主人公伏目]
[主人公頬染め]
「ええ……ではよろしくお願いします」[p]
;====================================================================================
[暗転２ storage="bg/bg_syanderia.jpg"]
[財前退場]
;【背景】シャンデリア　実際にダンスで動かせないので想像で補ってもらう　仮背景
[chara_mod name="bg" storage="bg/bg_syanderia.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　明治村画像庫'"]
[暗転２終了]
;====================================================================================
#
財前様のリードは完璧だった。[r]
私はぎこちないながらも、足を動かし姿勢を整え、なんとか[r]
ついていった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ頬染
[主人公憂い]
[主人公頬染め]
（財前様がこんなに近い……[r]
[sp]高鳴る私の胸の音が聞こえないか心配だわ）[p]


;【立ち絵】財前：微笑み
[whosay name="財前美彬" color="#7a65b2"]
「そう緊張することはないですよ。 初めてにしては上出来です」[p]


;【立ち絵】主人公：目伏せ困り頬染
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様はやはり慣れているのね。　きっと多くの女性と踊ったのだわ）[p]

;【立ち絵】主人公 : 目閉じ[r]
[主人公目閉じ]
（今度は胸がズキズキする……なぜなの？）[p]
[fadeoutbgm time=3000]

[暗転]
#
自分の気持ちに戸惑いながら、パーティは閉会の時間を迎え[r]
私は財前様に送られ家に帰った。[p]


;====================================================================================
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
