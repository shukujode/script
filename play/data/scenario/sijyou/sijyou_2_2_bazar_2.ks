*replay_sijyou_2_2
*start
*test
[iscript]
$(".1_fore").empty();
[endscript]
[stopbgm]
[call target=*2_2 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;====================================================
[cm]
[背景_チャリティ会場階段]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;====================================================
*scene3
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[背景_チャリティ会場階段]
[表示準備 storage="bg/B4nFWraU42/bg_cyarity7.jpg"]
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
#
―― 華族会館  [ruby text=チャリ]慈[ruby text=ティー]善バザー会場の玄関ホール。[r]
肌寒い初春の日だというのに会場の華やかな雰囲気に熱気を感じる。[p]
緑葉と花で飾られた玄関ホールでは、多くの華族が夜会服を纏い、[r]
談笑に勤しんでいた。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
;====================
[四条サイズ通常_羽織]
;[四条眉通常]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_futuu.png" time=0]
[wait time=10]
;[四条目通常]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
;[四条口微笑み]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[表示開始 time=300]
;====================
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：通常より大きめに開いた状態[主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「たくさんの方が来られてますね」[p]
[whosay name="華織" color="olivedrab"]
「そうだね。 [r]
[主人公目パチ1回]
[sp]ご婦人方が社会活動される[ruby text=チャリ]慈[ruby text=ティー]善バザーは[r]
[sp]先進的、と評判の[ruby text=もよお]催しだからね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：横目 [主人公横目]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
「華織様。　[ruby text=チャリ]慈[ruby text=ティー]善バザーとは、どの様な[ruby text=もよお]催しでしょうか？」[p]
[whosay name="華織" color="olivedrab"]
[四条目パチ1回]
「あまり僕は詳しくはないのですが、[r]
[sp]かつて、とある夫人が、この国に女子看護学校を設立するための[r]
[sp]資金集めにバザーを行なったのが始まりだそうです」
[主人公目パチ1回]
[p]
[whosay name="華織" color="olivedrab"]
;[四条目にこ]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
「ちなみに今日の[ruby text=チャリ]慈[ruby text=ティー]善バザーの収入金は、[r]
[sp]海外への医学留学に充てがわれるそうですよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「そうなのですね」[p]
[whosay name="華織" color="olivedrab"]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
「僕の家族も知見を得る為に留学していましたし、[r]
[主人公目パチ1回]
[主人公ポーズ指]
[sp]協力できて皆が楽しめるなら良い[ruby text=もよお]催しだと思います」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
「そうですね」[p]
[whosay name="華織" color="olivedrab"]
「今までは、ここに来るのは裏方でしかなったのですが、[r]
[sp]一度くらいは、僕自身も客として参加してみたかったのです」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様は、慈善活動にも関心があるのですね。[r]
[sp]色々な事を知っていて……)[p]
;華織は単に話を続けていた、という形です
[whosay name="華織" color="olivedrab"]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「でも、一番は[r]
[sp]一度、[名前]さんと来て見たかったのが理由ですけどね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;主人公反応 表情
[主人公照れ]
「……」[p]
[whosay name="華織" color="olivedrab"]
;[四条口笑顔]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_warau_s.png" time=0]
[wait time=10]
「まずはバザーを見て回りましょうか。[r]
[主人公通常]
[sp]もしかしたら僕の親戚も何か出店しているかも[r]
[sp]しれません」[p]
#
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[暗転２]
[四条退場]
;------------------------------------------------
;場面転換 
[背景_チャリティ会場出店]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
;====================
[四条サイズ通常_羽織]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
;====================
[暗転２終了]
――[ruby text=チャリ]慈[ruby text=ティー]善バザー会場。[p]
;------------------------------------------------
*scene4
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
(華織様の手紙で書かれていた通り、色々な手工芸品が並んでるわ)[p]
#
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
陳列棚には、[r]
靴下袋、手袋、押絵、巾着、人形、扇子、鞠、風車、襟巻き、[r]
などの多種多様な手工芸品が陳列されていた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「こちらの伝統的な蒔絵が描かれた扇子も綺麗ですね」[p]
;慈善バザーの夫人方が率先して出店している感は出したいところ
#
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
品物を見ていると陳列台の向こう側から貴婦人が話かけてきた。[p]
[whosay name=夫人]
[chara_mod name="sijyou_me" storage="sijyou/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
「こちらの扇子の細工も、よくできてますよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
;[四条目にこ]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
「繊細な桜の透し彫りが素敵ですね」[p]
[whosay name=夫人]
「ごゆっくりと、ご覧になってください」[p]
#
街道のお店と違って、のんびりとした様子で[r]
品物を見せる。[p]
;慈善活動なので、そう切迫していない 商売っ気はない
[whosay name="華織" color="olivedrab"]
;[四条目伏2]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=10]
;[四条口笑顔]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_warau_s.png" time=0]
[wait time=10]
「慈善活動とのことですし、僕も何か頂きましょうか。[r]
[sp][名前]さんも、気に入ったものがあれば……」[p]
;誰に話しかけてるか分かりづらい↓
[whosay name=夫人]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
「こんにちは、お嬢さん。 [r]
[sp]よろしければ私の出店品も見てくださいな」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;[四条目にこ]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
「あら、クマの人形とは珍しいです。[r]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[sp]とても可愛いですわ」[p]
[whosay name=夫人]
「なかなか上手くできているでしょう？[r]
[sp]私が海外に留学した際に見たものを作ってみましたの。[r]
[sp]"テディベア"というのよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(どうしましょう、どれも素敵だわ)[p]
#
出かけるまでの胸が締め付けられるような気持ちを[r]
スッカリ忘れ、私は出店品に夢中になってしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau.png" time=0]
[wait time=10]
「華織様も、こちらのクマ、可愛らしいと思いませんか？」[p]
[whosay name="華織" color="olivedrab"]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「ふふ、いつも[名前]さんだね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]
「あ……」[p]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
（いやだわ。[r]
[sp]せっかく今日は大人の女性として華織様とデェトに来たのに)[p]
;主人公ふぅ から困り照れ
[whosay name="華織" color="olivedrab"]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;[四条口笑顔]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_warau_s.png" time=0]
[wait time=10]
「そういった[名前]さんも、安心できて好きですよ。[r]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[sp]ああ、こちらのカメオも美しいですね」[p]
;[四条口微笑み]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
「本当ですね。 青みがかった白が上品な風合いです」[p]
;醸し出しています
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
(……そういえば、前にも華織様とお買い物に来ましたね)[p]
[表示準備 storage="bg/anten.jpg"]
[四条退場]
#
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
ふいに銀座でデェトした、あの時の気持ちが[ruby text=よみがえ]蘇る。
[暗転]
[表示開始 time=100]
;セピア
[背景セピア化]
[背景_四条_商店]
[p]
#
私も華織様を喜ばせたい――。[p]
[暗転]
[背景セピア化_解除]
;====================
[表示準備 storage="bg/anten.jpg"]
（私の願いは叶ったでしょうか……？）
[背景_チャリティ会場出店]
[四条サイズ通常_羽織]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[表示開始 time=300]
;====================
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[p]
#
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=10]
楽しげに笑う華織様の横顔を私はチラリと[ruby text=うかが]伺った。[p]
[whosay name="華織" color="olivedrab"]
「どうかしましたか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「いえ、私も華織様にプレゼントを贈りたいと思いまして」[p]
;------------------------------------------------
;好感度が80以上ならスキップ
[if exp="f.para_sijyou_koukando > 80"]
@jump target=good_seen
[endif]
;------------------------------------------------
;バザー 好感度低い場合
;しんみりしすぎでは？ 好感度低い場合
*scene4_1
[whosay name="華織" color="olivedrab"]
;[四条目にこ]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
「ありがとう[名前]さん。[r]
[主人公通常]
;[四条口笑顔]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_warau_s.png" time=0]
[wait time=10]
[sp]ですが僕は[名前]さんから、[ruby text=すで]既に沢山の幸せを頂いてますよ」[p]
#
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;↓口：ムッと不満や哀しみ、耐える感じの表情に [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
華織様は、[ruby text=いた]悪[ruby text=ずら]戯[ruby text=げ]気に微笑んだかと思うと、[r]
会場の騒めきに消されてしまいそうなくらい小さな声色で[r]
[華衣]様の出来事を呟いた。[p]
[whosay name="華織" color="olivedrab"]
;[四条口微笑み]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
;[四条眉下げ]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
「[名前]さんの手助けがなければ、[r]
[sp][華衣]とのことも解決しなかったでしょう……」
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[p]
;[四条目伏]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi1.png" time=0]
[wait time=10]
「ですから、僕は[名前]さんに幸せを与えたいのです」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様……」[p]
#
しんみりとした空気が流れたかと思うと、[r]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
華織様はパッと笑って何事もなかったかのように[r]
お顔をあげられた。[p]
[whosay name="華織" color="olivedrab"]
「[名前]さんの気に入ったものがありましたか？」[p]
#
辛いことを隠し、兄のような[ruby text=ほが]朗らかな愛情をみせる華織様。[p]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
;四条と背景を隠します
[表示準備 storage="bg/anten.jpg"]
華織様と再会した頃の私は、"この人は憧れの存在であって、[r]
誰しも持っているのような弱いところなんてない"と思ってしまっていた。[p]
;[背景_庭_夜]
そう考えて、憧れから反した事が起きた時、[r]
少しばかり華織様を疑ってしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（確かに華織様は、お一人で問題を解決しようするほど[r]
[sp]意思は強いと感じられますが)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（頼られていないというのは、取り残された気分になってしまうわ)[p]
;[背景_チャリティ会場出店]
;[四条口微笑み]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[表示開始 time=300]
;====================
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(今は、少しづつ近づいていると感じていたけれど)[p]
#
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
時折みせる、華織様の庇護的な愛情が[r]
歳の差という距離を感じずにはいられなかった。[p]
;-------------------------------------------------
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私も華織様に対等な関係として、贈り物をしたい。[r]
[sp]もっと親密になりたいわ)[p]
#
;↓目：横の伏目 [主人公横伏目]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=10]
思い悩んでいると、 [r]
背後から姉妹らしき二人組の会話が、私の耳に飛び込んできた。[p]
[whosay name="姉妹 その壱"]
「こちらも素敵ね。 [r]
[sp]ねぇ、お姉様。　お父様の贈り物に良いと思わない？」[p]
[whosay name="姉妹 その弐"]
「良いと思いますけれど、[r]
[sp]今回はアナタのお小遣いから出してくれないかしら？」[p]
[whosay name="姉妹 その壱"]
「なら、お互いに……」[p]
#
;↓目：通常より大きめに開いた状態[主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
お互いに……[r]
その言葉を聞いて、私の胸の中に一筋の光が去来した。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
（そうだわ）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
「華織様。[r]
[sp]もし[ruby text=よろし]宜ければ、お互いに贈り物を選ぶのはどうでしょうか？」[p]
 [whosay name="華織" color="olivedrab"]
;[四条目にこ]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
「それはとても良い案ですね。[r]
[sp][名前]さんが良ければ、僕は嬉しい試みだと思います」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉下位置 [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
「勿論です。 
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
華織様が何を選んで下さるか楽しみです」[p]
 [whosay name="華織" color="olivedrab"]
「[名前]さんの期待に添えるように[r]
[sp]素敵な贈り物を選んでみせましょう」[p]

@jump target=*scene5
;------------------------------------------------
*good_seen
;好感度高い場合
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
「迷惑でしょうか……？」[p]
[whosay name="華織" color="olivedrab"]
;[四条目にこ]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
「いえ、嬉しいですよ！」
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[p]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
「そうですね……[r]
;[四条口笑顔]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_warau_s.png" time=0]
[wait time=10]
[sp]もし[ruby text=よろし]宜ければ、今日という記念にお互いに贈り物を[r]
[sp]選ぶのはどうでしょうか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
「！ [r]
;[四条口微笑み]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
;↓口：控え目な笑顔 [主人公口笑顔小]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
[sp]素敵ですね。[sp]華織様が何を選んで下さるか楽しみです」[p]
 [whosay name="華織" color="olivedrab"]
 ;[四条目にこ]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
「では、決まりですね。[r]
[sp]僕も[名前]さんからの贈り物を楽しみにしてます」[p]
;------------------------------------------------
*scene5
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
(きっと思い出に残る贈り物になるに違いないわ)[p]
#
;------------------------------------------------
;全画面表示
@layopt layer=fix visible=false
[wait time=50]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_prologue.jpg" time=50]
[四条退場]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;------------------------------------------------
しばしの間、お互いに離れ、[r]
私は付き人についてもらいながら、[r]
華織様への贈り物を探し始めた。[p]
;------------------------------------------------
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
@layopt layer=message0 visible=true
;------------------------------------------------
[if exp="f.okeiko_gamen == true"]
@jump storage="sijyou/sijyou_2_2_bazar_3.ks" target=seen_prezent
[else]
#
;選択肢用レイヤーを追加
[position layer=message1 height=200 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]
テストページからプレイしています。次のシナリオに移動しますか？[r]
[link target=*jump_ok]次のシナリオへ[endlink][r][r]
[link target=*jump_no]テストをおわる[endlink]
[resetfont]
[s]
*jump_ok
[er]

[current layer="message0"]
[resetfont]
[er]
「はい」[r]
移動します。[p]
[cm]
@jump storage="sijyou/sijyou_2_2_bazar_3.ks" target=seen_prezent
[s]

*jump_no
[er]
[resetfont]
[cm]
[イベントシーン終了]
@layopt layer=fix visible=true
@jump storage="test_sijyou.ks"
[endif]
[s]
