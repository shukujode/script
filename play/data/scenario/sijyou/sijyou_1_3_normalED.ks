*replay_sijyou_1_3
*start
[stopbgm]
[call target=*start storage="tyrano.ks"]
;暗転プリロードサブルーチン
[call target=*1_3 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[stopbgm]
;=================================================================================_
*first
*seen1
;【背景】ヒロインの部屋
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=================================================================================_
[whosay name="磯野" color="dimgray"] 
「お嬢様、四条華織さまがお迎えに来られました」
[主人公目パチ1回]
[wait time=10]
[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"] 
「わかったわ。すぐ参りますとお伝え下さい」[p]
[autosave]
[whosay name="磯野" color="dimgray"] 
「はい、それでは」[p]
[主人公真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「待って、磯野」[p]
[whosay name="磯野" color="dimgray"] 
「はい」[p]
[主人公困り]
[whosay name=&sf.girl_namae color="#cf5a7f"] 
「帯留めや髪飾りの位置は大丈夫かしら？」[p]
[whosay name="磯野" color="dimgray"] 
「はい。大丈夫でございます。　お綺麗ですよ」[p]
[whosay name="磯野" color="dimgray"] 
「ですが、お嬢様」[p]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「な、何ですか？」[p]
[whosay name="磯野" color="dimgray"]
「もう、そのようなことを気になさる[ruby text=あいだ]関[ruby text=がら]柄ではないのでしょう？」[p]
;日本語がおかしいような、あと読みにくい保留 rubyで補強
[主人公照れ]
[whosay name=&sf.girl_namae color="#cf5a7f"] 
「……」[p]
[whosay name="磯野" color="dimgray"] 
「お嬢様、行ってらしゃいませ」[p]
;しっかりした大人になっていく感じ主人公の表情
[主人公通常]
[主人公口笑顔]
[whosay name=&sf.girl_namae color="#cf5a7f"] 
「行ってきます」[p]
#
[主人公退場]
[whosay name="磯野" color="dimgray"]
(少し、寂しくなりますね)[p]
#
;¥¥¥¥¥¥¥¥イベント7¥¥¥¥¥¥¥¥ここの中盤で　さん　呼びなのね　もう忘れてたよ・・・
;=================================================================================_
*seen2
[layopt layer=fix visible=false]
;【SE】鳥たち（複数の鳥の声）　適当なSEで合間を誤魔化す
[playse storage=tori_yatyou.ogg loop=false ]
[image layer=29 x=1 y=1 storage="bg/bg_ryoutei.jpg" time=1000]
[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
;○解決の知らせ→料亭などで落ち合うことに。
;☆フィナーレ（結末。主人公の勝利）
;○悩み(真実)についての独白とその後の悩みの変化が語られ主人公に感謝する。四条には主人公しかいない等と言って改めて告白
;[料亭]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]
;【登場】四条
[四条ベース着物]
[四条微笑み]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[freeimage layer=29 time=500]
[layopt layer=fix visible=true]
;==========表示準備完了==============
[whosay name="華織" color="olivedrab"]
「お[ruby text=と]父[ruby text=う]義様には、許可をもらって来られましたか？」[p]
[autosave]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。[r]
[sp]『もう一緒になるのだから好きにしなさい』といってました」[p]
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「一緒か……」[p]
;○華織、しみじみと振り返るか笑顔で
[whosay name="華織" color="olivedrab"]
「そうだね……[名前]と出逢えてよかったと思う」[p]
[四条真剣]
[whosay name="華織" color="olivedrab"]
「僕は[名前]と再会する前は、ずっと 妹のような箱入り娘だと[r]
[sp]思っていたよ」[p]
[四条困り]
[whosay name="華織" color="olivedrab"]
「それに ([華衣]に悪いと思って)返事も素っ気なかった時もあったよね」[p]
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「今、思っても[名前]には失礼なことをしていたと反省している」[p]
[主人公目パチ1回]
[wait time=10]
;△主人公の反応は、いる？
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;(いえ、その後のお手紙は沢山頂きましたので楽しかったです)[p]

[fadeoutbgm time=2000]
;[四条目通常]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
;[四条汗]
[chara_mod name="sijyou_emo" storage="sijyou/emo_ase.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「もちろん、今では、貴方のことを芯の強さ持った素敵な女性だと[r]
[sp]思っている」[p]

[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「時折、みせてくれる素の可愛らしい部分も含めて」[p]

[stopbgm]
[四条真剣]
;焦っている感じの口を開くがないのでこのまま・・・
;○必要に応じて[p]ではなくてウェイト[er]？
[whosay name="華織" color="olivedrab"]
「　僕は、[名前]のこと
;[四条口驚き]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_odoroki.png" time=0]
[wait time=10]
が好きなんだ　」[p]
;[四条効果消]
[chara_mod name="sijyou_emo" storage="toumei.gif" time=0]
[wait time=10]

[if exp="sf.BGM=='ON'"]
;【BGM】星降る夜に（思い出/夢見るシーンに
[playbgm storage="yumemiru_hoshi.ogg" loop=true]
[eval exp="f.bgm_storage='yumemiru_hoshi.ogg'"]
[endif]
[主人公照れ目普通]
[wait time=10]
[四条目パチ1回]
;[四条口微笑み]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「[名前]さんに先を越されてしまいましたが、改めて言わせて下さい」[p]
;○親の言われるままに婚約したので告白の言葉は送っていなかった
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「愛しています。　[名前]さんと共に歩みたい　」[p]
[主人公笑顔]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……はい」[p]
;○2人手をとって、共に歩むことを決意する
;あんなこと付き合わせたのでok貰えてホッとする四条
;[四条汗]
[chara_mod name="sijyou_emo" storage="sijyou/emo_ase.png" time=0]
[wait time=10]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「よかった」[p]
[主人公照れ目普通]
[wait time=10]
;[四条頬染め]
[chara_mod name="sijyou_emo" storage="sijyou/emo_hohosome.png" time=0]
[wait time=10]
[四条笑顔大]
[whosay name="華織" color="olivedrab"]
「そうだ。[r]
[sp]せっかく、お義父さまのお許しを得たのだから、お出かけを[r]
[sp]しましょうか」[p]
#
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
[wait time=10]
「はい！」[p]
[暗転２]
[主人公退場]
;【退場】四条
[四条退場]
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
;=================================================================================_
*seen3
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版枠茶色]
[暗転２終了]
[iscript]
$('.1_fore').css({'filter':'brightness(1.3)','-webkit-filter':'brightness(1.3)','-moz-filter':'brightness(1.3)','-ms-filter':'brightness(1.3)'});
[endscript]
[image name="yuki" storage="bg/sijyou_machi_yuki.png" layer=1 zindex=2]
[メッセージウィンドウ上ボタン表示]
#
僕達は、賑わう町を並んで歩いていく。[p]
[autosave]
#
人々は新しい季節と出会いにむけて、ショーウィンドウの前で楽しそうに話をしている。[p]
―― きっと誰かに新年の贈り物をするのだろう[p]
[whosay name="華織" color="olivedrab"]
(あぁ、もっと[名前]さんに何かをしてあげたいな )[p]
#
彼女に対して　返すべきもの、ほしいもの　で[r]
僕の心は、今まで以上に貪欲になっていた。[p]
#
－－だからかもしれない。　僕は、ふと考えた。[p]
[whosay name="華織" color="olivedrab"]
([名前]さんと、離れずにもっと早く同じ季節を過ごしていれば……）[p]
[whosay name="華織" color="olivedrab"]
(なんて今、考えてしまうのも、[名前]さんのおかげなんでしょうね)[p]
#
－－となりに並んでくれる彼女をみつめる。[p]
[whosay name="華織" color="olivedrab"]
「これからは記念日ごとに思い出の品を買おうか」[p]
;○華織は、弟のことを思い出し。これから、戦争や病気などで別れあるかもしれないと思って。
[whosay name="華織" color="olivedrab"]
(年上の癖に、今はまだこんなことしか、思いつかないけど)[p]
[whosay name="華織" color="olivedrab"]
(悔いがないように。　あの人に負けないほどの恋を)[p]
[whosay name="華織" color="olivedrab"]
([名前]さんと綴っていけたらいいな)[p]
#
冬のしんとした寒さの中、[ruby text=ふた]二つの暖かな吐息がほんわりと並び、[r]
次の季節に思いを馳せる。[p]
;=================================================================================_
*seen4
[autosave]
#
－－その後、結納の日取りも三月末と決まり[r]
[sp]何気ない日常が目に鮮やかに映るようになった。[p]
[暗転]
[暗転２]
[iscript]
$('.1_fore').css({'filter':'brightness(1.0)','-webkit-filter':'brightness(1.0)','-moz-filter':'brightness(1.0)','-ms-filter':'brightness(1.0)'});
$('.yuki').remove();
[endscript]
;¥¥¥¥¥¥¥¥イベント7おわり¥¥¥¥¥¥¥¥
[イベントシーン終了]

[if exp="tf.okeiko_gamen==true"]
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
