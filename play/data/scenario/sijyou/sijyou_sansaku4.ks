;///////散策案4 キャラの良さ、フラグ回収;期間 終わったあと;元散策3案;登場人物 四条親戚 四条華織 華衣///////
;=======================お芝居の準備中です==================================
*sansaku
[stopbgm]
[call target=*bonyou2 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[freeimage layer = 1]
[wait time=10]
[背景_町]
[表示準備]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
町に出た。[r]
木の葉はすっかり落ち、新緑の為に息を潜める季節。[r]
冷たい空気が背筋を伸ばしてくれる。
[autosave改]
[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(今日は、どこを見て回りましょうか)[p]
#
全てが落ち付きを取り戻したからこそ、余裕をもって町をみて回ることが[r]
できる。[p]
#
「「おねえちゃんーーー！！、おねえちゃんーーー！！」」[p]
[主人公驚]
[主人公眉下げ下]
#
ふと、見ると飴屋の前で泣き叫んでる小さな子供が２人、[r]
手を繋ぎながらも、泣き崩れていた。[p]

;※思いつかないので画像つけてるだけです。実際は町のみ。
[whosay name="飴屋の主人"]
「まいったなぁ……ここから離れるわけにいかないし」[p]
[主人公憂い]
[主人公ポーズ指]
#
飴屋の主人は、店から離れられない様子で、誰かが救いの手を[r]
出してくれないかと、流れ行く人をオロオロと見つめている。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
(……)
[主人公通常]
[p]
#
私は、思わず足が動き、子供達に近寄っていた。[p]
;男の子っぽいし
[主人公眉下げ下]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「大丈夫？ お姉ちゃんとはぐれたの？」[p]
#
子供達の視点に合わせ、比較的、子供に伝わりやすい口調で尋ねてみた。[p]
[主人公目パチ1回]
[whosay name="子供達・壱"]
「……おねえちゃん……どこにも……さがしてもいなくて……」[p]
[whosay name="子供達・弐"]
「えんちゃんが、飴屋に行こうなんて、言わなければよかったのに……」[p]
[主人公口開]
[whosay name="子供達・壱"]
「かんちゃんも行くっ……言ったじゃん……！！」[p]
[主人公汗]
#
子供達は、喧嘩を始めると、また降り出しに戻って泣き叫んでしまった。[p]
[whosay name="飴屋の主人"]
「はぁ。さっきから、この調子なんだよ……」[p]
;◎戸惑う主人公　憂いではないと思うよ　あせり
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]
(どうしましょう)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(もう一度、
[主人公ポーズ通常]
[wait time=10]
この子達が言っている、『おねえちゃん』について聞いてみま[r]
_　しょうか)[p]
#
その時だった。[p]
[whosay name="？？？"]
「何してんの？」[p]
#
頭上から華織様に似た声がして、ハッとして見上げた。
[autosave改]
[p]
[主人公驚]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！ [華衣]さん！」[p]
#
見上げた先には、華織様の弟、[華衣]さんが、立っていた。[p]
;一人称ェ～～
#
;雄雄しい　幼い？　激しい性格↓
華織様の御兄弟だけあって、やはり似ているけれど、[r]
[華衣]さんの方が鋭い目付きをしており、立ち振る舞いも雄々しく感じる。[p]
[主人公通常]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「こんにちは」[p]
#
[ruby text=そ]楚[ruby text=そ]々と立ち上がると礼をしてみせる[p]
[whosay name="華衣" color=%mp.color]
「ていうか、"そいつら"……」[p]
[whosay name="子供たち"]
「「[華衣]ニーチャン！」」[p]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]
;(……！？)[p]
;あら？ なくてもいいやも
[whosay name="華衣" color=%mp.color]
「何で、こんなとこに来てるワケ？」[p]
#
[華衣]さんは、子供達に話しかけた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お知り合いですか？」[p]
[whosay name="華衣" color=%mp.color]
「親戚の子」[p]
[whosay name="子供たち"]
「「いつも、遊んでくれるのー」」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[wait time=10]
「そうなのですね」
[主人公ポーズ通常]
[wait time=10]
[p]
#
運良く、親族の者が現れた為、私は、ほっと胸を撫で下ろした。
;ふぅとひといき
[主人公ふぅ閉]
[wait time=10]
[主人公伏目]
[wait time=20]
[p]
[whosay name="華衣" color=%mp.color]
「……迷惑、かけた」[p]
[主人公目通常]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？ 」[p]
[whosay name="華衣" color=%mp.color]
「迷惑かけたって言ったの！ 悪かったって思ってる」[p]
;主人公 控えめに微笑み　これかな
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏柔]
[wait time=10]
「いえ」[p]
[whosay name="華衣" color=%mp.color]
「コイツらのことは、まかしといて」[p]
[主人公驚]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]
#
[華衣]さんは、しゃがみ込むと、先程、私がしたように子供達に質問を[r]
した。[p]
[whosay name="華衣" color=%mp.color]
「お前ら、今日は誰と来たんだ？ 後藤のおばちゃんか？ [r]
[sp]それとも姉貴か？」[p]
#
[主人公通常]
[wait time=10]
[主人公ポーズ指]
[wait time=10]
[whosay name="子供達・壱"]
「おねーちゃん……」[p]
[whosay name="華衣" color=%mp.color]
「姉貴のほうか。で？ どこではぐれた？」[p]
[whosay name="子供達・弐"]
「わかんない……」[p]
[主人公ポーズ通常]
[wait time=10]

;◎あんまり解決しない
[whosay name="子供達・壱"]
「……おねえちゃん……どこにも……さがしてもいなくて……」[p]
[whosay name="子供達・弐"]
「えんちゃんが、飴屋に行こうなんて、言わなければよかったのに……」[p]
[主人公憂い]
[whosay name="子供達・壱"]
「かんちゃんも行くっ……言ったじゃん……！！」[p]
[whosay name="飴屋の主人"]
「君たち、場所を変えてくれないかな……？」[p]
[whosay name="子供たち"]
「「わぁぁん！！」」[p]
[主人公驚]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]

[whosay name="華衣" color=%mp.color]
「あー、うるさい！ そんなんじゃ分かんないよ！」[p]
#
まるで、ふりだしに戻ったかのように子供達は泣き出してしまった[p]
[主人公憂い]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(……どうしましょう)[p]

;◎華織に出会う まだ華衣とはやや険悪
[whosay name="華織" color="olivedrab"]
「[名前]さん、 [華衣]？ どうされたのですか？」
[autosave改]
[p]
;どうかされたのですか？
;【登場】四条
[四条ベース羽織]
[四条驚き]
[freeimage layer=13 time=300]
[wait time=300]
[主人公驚]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様！」[p]
;やや呆れている
[whosay name="華織" color="olivedrab"]
[四条通常]
;[四条汗]
[chara_mod name="sijyou_emo" storage="sijyou/emo_ase.png" time=0]
[wait time=10]
「祖母に『[華衣]に買い出しを頼んだのにまだ帰ってこない』と言われ[r]
[sp]来てみたら」[p]
;険悪なのにどうなの？このセリフ、あと買い出しってどうなの？→罰だと思いねぇ
[whosay name="華衣" color=%mp.color]
「……」[p]
[主人公憂い]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]
;このポーズは特に意味ない気が

#
[華衣]さんは、きまりの悪そうな表情で腕組みをすると、[r]
華織様から目を背けた。[p]
;[四条効果消]
[chara_mod name="sijyou_emo" storage="toumei.gif" time=0]
[wait time=10]
[四条憂い]

[主人公ポーズ通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(やっぱり、すぐには……無理ですよね……。[r]
_　いつかは仲良くなってほしいですが)[p]
#
そんな[華衣]を見た華織は、僅かに憂いを見せたが、直ぐに柔和な表情を[r]繕ってみせた。[p]
[四条笑顔]
[whosay name="華織" color="olivedrab"]
「ああ、エンさんとカンさんですよね。お久しぶりです」[p]
[whosay name="子供たち"]
「「うう ……おねえちゃん……どこにも……さがしてもいなくて……[r]
[sp]！！」」[p]
[四条通常]
;[四条眉下げ]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「そうですか。不安ですよね」[p]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
#
華織は、一言、子供達に同情すると、立ち上がる。[p]
[主人公口開]
[wait time=10]
[主人公ポーズ指]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
( ？ )[p]

;[四条目通常]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
[四条口開]
;◎華織の機転で迷子をなんとかする？
[whosay name="華織" color="olivedrab"]
「腹が減っては戦ができぬ……と言いますし、[r]
[sp]ひとまず、みんなで、飴でも食べませんか？ 」[p]
[whosay name="華衣" color=%mp.color]
「はぁ ？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ片手]
[wait time=10]
[主人公驚]
[wait time=10]
「えっ？」[p]
[whosay name="華織" color="olivedrab"]
「懐かしいですよね。 子供の頃は……あ、五人分でお勧めを下さい」[p]
[whosay name="飴屋の主人"]
「……あいよ」[p]
[四条口微笑み]
#
動植物の形をした飴細工を手に華織は子供達の前へと座る。[p]
[whosay name="子供たち"]
「「飴！！」」[p]
[whosay name="子供・壱"]
「エンは、鶴がいいなー」[p]
[whosay name="子供・弐"]
「カンは、金魚がいいなー」[p]
;円環のことわりに導かれてうんぬん
[四条笑顔]
[whosay name="華織" color="olivedrab"]
「はい。どうぞ」[p]
[四条口微笑み]
#
子供達は、すっかり不安な気持ちを忘れ、落ち着きを取り戻した。[p]
[whosay name="華織" color="olivedrab"]
[四条微笑み]
「[名前]さんには、兎の飴細工なんて如何ですか？」[p]
[四条口開]
;鳥獣戯画的な飴 蛙は手紙を思い出すかと。亀でもいいかも？
[wait time=10]
#
華織様は、[ruby text=うさぎ]兎と[ruby text=かえる]蛙が並んで踊る[ruby text=あめ]飴[ruby text=ざ]細[ruby text=いく]工から、
[ruby text=うさぎ]兎を選ぶと私に[r]手渡した。[p]
;食べているように"も"みえるように片手ポーズ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(かわいらしい)[p]
[whosay name="華衣" color=%mp.color]
「そんなことより、さっさと探した方がいいと思う」[p]
;主人公 ハッとする？
[主人公驚]
[wait time=10]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「エンさんとカンさんは、今日は何をなさりに来たのでしょうか？」[p]
[主人公ポーズ通常]
[主人公憂い]
[wait time=10]
[四条目パチ1回]
[whosay name="子供・壱"]
「うんとねー、お山を見にいったー、あと、お洋服買うっていってたー」[p]
[whosay name="子供・弐"]
「おねぇちゃん……」[p]
[whosay name="華織" color="olivedrab"]
[四条笑顔]
「大丈夫。ここで待っていれば、必ず来られますよ」
[autosave改]
[p]
[whosay name="華織" color="olivedrab"]
[四条微笑み]
「お山と言われますと、四条鉱山。[r]
[sp]呉服屋ならこの付近に 二・三件、ありますね。[r]
_　さてどうしましょうか？」[p]
[whosay name="華衣" color=%mp.color]
「何でそんな悠長なんだよ！ 俺は行ってくる！」[p]
[fadeoutbgm time=3000]
[whosay name="華織" color="olivedrab"]
[四条笑顔]
「[華衣]お兄ちゃんが、頑張って探してくれるそうです。待ちましょう」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「よろしいのですか？」[p]
;何で探してあげないのですか？
;◎華織、華衣に対しての想いを語る
;普通に鳴る
[whosay name="華織" color="olivedrab"]
[四条通常]
「僕が探しに行ったとしても、[華衣]はここで待ってるなんて出来ない[r]
[sp]でしょう」
[p]
[if exp="sf.BGM=='ON'"]
;【BGM】哀しげな曲（攻略対象側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukisugara.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukisugara.ogg'"]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私のことなら、お気になさらずとも」[p]
[四条目パチ1回]
[whosay name="華織" color="olivedrab"]
;[四条眉強気]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_tuyoki.png" time=0]
[wait time=10]
「いいんだ。いざって時は、家に電話をかけてしまえばいい」 [p]
[主人公ポーズ片手]
[wait time=10]
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あ……」[p]
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「けどね、しなかった」[p]

[主人公ポーズ通常]
[wait time=10]
[主人公憂い]
[wait time=10]
[主人公口開]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうしてですか？」[p]
#
私は、華織様のお考えが読めなくて、思わず眉を曇らせてしまった。[p]

[主人公口ムッ]
[wait time=10]
[四条困り]
[whosay name="華織" color="olivedrab"]
「[華衣]には、まだ色々なことを頑張ってほしい」[p]
[whosay name="華織" color="olivedrab"]
「僕は次男で、それなりに四条家の跡取り候補として教育を受けて[r]
[sp]きましたが、[華衣]は、末っ子で役割も与えられず、[r]
[sp][ruby text="おん"]乳[ruby text="ば"]母[ruby text="ひ"]日[ruby text="がさ"]傘のように
育てられていました」[p]
[whosay name="華織" color="olivedrab"]
「今思うと、僕も[華衣]に対して、過保護に[r]
[sp]何でも解決してあげようといたのが良くなかったのかもしれない」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口開]
[wait time=10]
「どうして、その様なことを」[p]
[四条伏目パチ1回]
[whosay name="華織" color="olivedrab"]
「波ヶ浦で[華衣]は、僕のことをこう言ってました」[p]
[主人公口通常]
[wait time=10]
#
―― 勉学も運動も、笑って何でも出来るアンタには、[r]
[sp] 一生この気持ちがわからない [p]
[主人公ポーズ片手]
[wait time=10]
[主人公口開]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！ 」[p]
[四条困り]
[whosay name="華織" color="olivedrab"]
「[華衣]の目の前で 何もかも、 解決していく内に、[r]
 [sp][華衣]は、疲弊して周りをみることができなくなってしまっていたのだ[r]
 [sp]と思うのです」 
[autosave改]
[p]
 ;華衣の心は　？
 [四条目閉じ]
[whosay name="華織" color="olivedrab"]
「だから、僕が出しゃばって、[ruby text=な]成し[ruby text=と]遂げてしまうより、[r]
[sp]自分で乗り越えてほしい」[p]
[主人公憂い]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「ましては、そのせいで[華衣]に迷惑を[ruby text=こうむ]被らせたのですから」[p]
;ったでは変なので
;不利益をこうむらせた
[主人公憂い]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様……」[p]
[四条困り微笑み]
[whosay name="華織" color="olivedrab"]
「もちろん。　[華衣]にどうしてもって助けを求められたら[r]
[sp]手を貸すつもりです」[p]
[四条困り]
[whosay name="華織" color="olivedrab"]
「余計な御世話でしょうか……」[p]
[主人公目閉じ]
[wait time=10]
#
どうにも出来ないときは、手を差し伸べ、[r]
いつもは陰ながら見守ること。[p]
#
なかなか出来ないことだと感じつつも、華織様の為に、胸に染み渡る[r]
苦渋を抑え込んだ。[p]
[主人公口ムッ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……華織様の良きお考えがあるなら、私は何も言いません」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(今、私が感じている、それ以上に華織様は、お辛いはず)[p]
[主人公口通常]
[wait time=10]
[四条困り]
[四条口微笑み]
[whosay name="華織" color="olivedrab"]
「きっと、僕より、[華衣]なら凄いことが出来ると思う」[p]
[主人公憂い]
[wait time=10]
#
儚げに微笑む華織様をみて、[r]
私は、兄弟という掛け替えのない繋がりを作ろうとしている彼を見守ろうと思った。 [p]
[主人公ポーズ指]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(もしかしたら、時折、お兄様も、その様なことを[r]
[sp]お考えになられているのでしょうか)[p]
[四条微笑み]
[whosay name="子供・壱"]
「ねぇ！おにーちゃんは飴[ruby text=に]二本も食べるのー？」[p]
[fadeoutbgm time=3000]
;音楽停止位置
[四条笑顔]
[whosay name="華織" color="olivedrab"]
「これは、帰ってきた方達のお土産用です」[p]
;主人公 ほほえみ？
[主人公通常]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[四条目閉じ]
#
まもなくして、[r]
息も絶え絶えの[華衣]さんが帰ってきた。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
;【BGM】夕涼み（お稽古パートなど
;[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
;[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

[whosay name="華衣" color=%mp.color]
「おい！姉貴を見つけてきたぞ！！」[p]
[whosay name="子供たち"]
「「！！」」[p]
[四条口微笑み]
[whosay name="子供たち"]
「「おねぇちゃーーん！！」」[p]
#
子供達は、思い出したかのように泣き出すと、探し主の元へと駆け寄り、[r]
再会の喜びを確かめ合う。[p]
[主人公ほほえみ]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「おかえり、
[四条口開]
[華衣]」[p]
[主人公通常]
[wait time=10]
[whosay name="華衣" color=%mp.color]
「はぁ、何にもしないで、ヘラヘラしやがって、少しは探してくれたって[r]
[sp]いいじゃないか」[p]
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「犯人は必ず、現場に戻ってくると、本で読んだことがありましたから、[r]
[sp]念のために待ってました」
[autosave改]
[p]
[主人公通常]
[wait time=10]
[whosay name="華衣" color=%mp.color]
「犯人って、なんだよ」[p]
[四条笑顔]
[whosay name="華織" color="olivedrab"]
「それに僕は[名前]さんと、一緒なら探し物は[r]
[sp]何でも見つけてしまうのだよ」[p]
[四条口微笑み]
[主人公照れ]
[wait time=10]
;主人公 冗談にくすりと笑う？
[whosay name="華衣" color=%mp.color]
「ほぼ、座ってただけじゃん」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;淑女度にしよう。値は適当
[主人公通常]
[主人公口ほほえみ]
[if exp="f.para_shujinkou_shukujodo >= 200"]
(見つかってよかったですね)[p]
[else]
(見つかってよかった……)[p]
[endif]
[四条微笑み]
;◎華織、華衣に迷子を渡す任務を任せて帰る。
[whosay name="華織" color="olivedrab"]
「さぁ、[華衣]。　後はお願いします。
;淑女度にしよう。値は適当
[if exp="f.para_shujinkou_shukujodo >= 200"]
見つからないということは悲しいことだから」
[else]
[whosay name="華織" color="olivedrab"]
その子達は、貴方の友人なのだから」
[endif]
[主人公通常]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[p]
[四条微笑み]
[四条目パチ1回]
[whosay name="華織" color="olivedrab"]
「それとも、僕が横から出しゃばってほしいですか？」[p]
#
華織様は、[華衣]さんに飴細工を渡す。[p]
[whosay name="華衣" color=%mp.color]
「言われなくても！」[p]
#
そういって[華衣]さんは、子供たちと彼らの姉の元へと走っていった。[p]
[主人公ポーズ片手]
[wait time=10]
[主人公眉下げ]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[四条目閉じ]
[whosay name="子供たちの姉"]
「[華衣]さん、ありがとうございます」[p]
[whosay name="華衣" color=%mp.color]
「別に。いつもコイツらとは、遊んでるし。これからは、見落とすなよ」[p]
;飴をあげてると思いねぇ あげるよって書くと流れがどうだろ
[whosay name="子供たちの姉"]
「はい！」[p]
[whosay name="子供たち"]
「「[華衣]ニーチャンありがとう！！」」[p]
:華衣の相手がわからないので
[whosay name="子供たちの姉"]
「[華衣]様、いつも子供達と遊んで下さってありがとうございます。[r]
[sp]それで、あの、今度、一緒に……お話できたら」[p]
[whosay name="華衣" color=%mp.color]
「？[sp]べつにいいけど」[p]
[whosay name="子供・壱"]
「ねぇ！[sp]おねーちゃんは何で顔が赤くなってるの？」[p]
[whosay name="子供たちの姉"]
「もう、そんなことないわ！」[p]
[whosay name="子供・弐"]
「おねーちゃん、さっき見たタコの形をした飴さんに似てる！」[p]
[whosay name="華衣" color=%mp.color]
「あはは、なんだそれ」[p]
[四条微笑み]
#
真冬の木漏れ日に暖かな笑顔が並ぶ。[p]
[主人公ポーズ通常]
[wait time=10]
#
それを見た私たちは静かに微笑んだ後、その場を後にした。[p]
[四条目閉じ]
[主人公目閉じ]
[wait time=10]
[主人公退場]
[whosay name="華織" color="olivedrab"]
（今は、まだ意地の悪い兄でいよう。 いつか、またそのときが[r]
[sp]来るまで） [p]
#
[if exp="f.event_replay != 'sijyou'"]
[eval exp="f.event_sijyou_4 = 1"]
[eval exp="sf.event_sijyou_sansaku_4 = 1"]
[endif]
;【退場】四条
[四条退場準備 time=500]



;============================下は触らない？==============================

[イベントシーン終了]

[if exp="f.okeiko_gamen == true"]
@jump storage="sansaku.ks" target=*sansaku_machi_seika
[else]
[イベントシーン終了２]
[endif]

@jump storage="test_sijyou.ks"
[s]
