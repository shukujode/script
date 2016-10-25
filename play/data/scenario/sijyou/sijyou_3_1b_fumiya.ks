*test
;テスト用イベントシーン構築
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;[暗転]
#
[chara_mod name="bg" storage="toumei.gif"]
[イベントシーン構築]
[主人公通常ポーズ]
[主人公通常]
;テスト用イベントシーン構築ここまで
テストページからはじめます[p]
*first
#
;○四条邸宅の庭
;【背景】[洋館庭]
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyouke.jpg"]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[イベントシーン構築枠茶色]
#
あれは、僕が14歳くらいの出来事だった。[p]
[whosay name=文矢 color="#538a8a"]
(なんて広い屋敷なんだ…)[p]
#
父、[emb exp="sf.father_name"]に連れられてやってきた屋敷は、
目まぐるしいほどに草花に囲まれた洋館であった。[p]
#
父は外交官をしており、仏蘭西での交渉の際、鉱山取引の知識が必要になったのだ。[p]
#
その時に、ちょうど耳にした外交取引で成功をおさめている四条鉱山[p]
もとい、四条鉱山の実質的な主、四条悠次郎に相談し、交流は、今に至る。[p]
#
そんな父[emb exp="sf.father_name"]と四条悠次郎は、[r]
互いに家は近くと聞いて、話が弾みだしてしまい、僕は暇を持たされてしまったのだ。[p]
[whosay name=文矢 color="#538a8a"]
「お父様は、話が長すぎるよ。
それにしてもこの屋敷と庭…」[p]

#
外交を取り行いやすいよう、海外の人々を受け入れる為に作られた流行りの洋式の屋敷。[p]
しかし、よくよくみてみると庭は大名時代の回廊式の名残があり、武家の歴史を垣間見ることができる。[p]
[whosay name=文矢 color="#538a8a"]
(ふぅ。 こんなところで待たされたら、誰だって探検をしたくなっても仕方ない)[p]
・・・・・[p]
[whosay name=文矢 color="#538a8a"]
(弱ったな。広すぎて迷ってしまったようだ。
洋式の庭園は、日本庭園と違って見晴らしも悪いものなのかな？)[p]
[whosay name=文矢 color="#538a8a"]
(奥に行く程に花、花ばかりで[r]
[sp]これでは本当に秘密の花園にでも迷い込んでしまったみたいだ)[p]

[whosay name="華織" color="olivedrab"]
「！？ お祖母様？」[p]
#
燎原の炎のような薔薇園の中、薔薇の花首を手にした少年が目に入る。[p]
赤い薔薇とは対照的に白いあやしき彼は、まるで絵画に描かれる神話の少年のようであった。[p]
#
彼は、こちらを振り向く。[r]
その目には、涙を浮かべていた。[p]
[whosay name=文矢 color="#538a8a"]
「失礼。迷い込んでしまったようだ」[p]
#
気まずいところに来てしまったようだ。[p]
#
彼が伏せっているからなのか？[r]
わざわざ仏蘭西から帰宅した四条父は、同い年であろう僕に彼を紹介するべきところをしなかった。[p]
#
それは、この表情が理由……のかもしれない。[p]
#
単に、悠次郎さんが僕のお父様と話に夢中で忘れていたかなんて、[r]
僕が考えるべきことじゃないから、それは、今でも分からないままだ。[p]

[whosay name="華織" color="olivedrab"]
「こちらこそ、君みたいな"若人"を僕のお祖母様と間違えて失礼した」[p]
[whosay name=文矢 color="#538a8a"]
「"若人"って……君は、僕と変わらぬ歳じゃないか？」[p]
[whosay name="華織" color="olivedrab"]
「そうかもしれないね。  僕の歳は十四。[r]
_ 君の歳は……」[p]
[whosay name=文矢 color="#538a8a"]
「僕もそうだ！[r]
_ ところで、君はこんなところで何をしてるんだい？」[p]
[whosay name="華織" color="olivedrab"]
「修行の合間の休憩兼、その為の観察さ」[p]
[whosay name=文矢 color="#538a8a"]
「修行？ それは、また仰々しいな。[r]
[sp]一体、何の修行なんだい？」[p]
[whosay name="華織" color="olivedrab"]
「華道だよ。 だから、今も花を見ていたところなんだ」[p]
[whosay name=文矢 color="#538a8a"]
(にしても。観察にしては……危うさを感じる姿だったような……) [p]
[whosay name=文矢 color="#538a8a"]
「大変、なんだろうね……」[p]
#
僕は、色々と考えた割に月並みの言葉を送るしかなかった。[p]
;芸に詳しいワケでもなかったからね[p]
[whosay name="華織" color="olivedrab"]
 「修行自体は、楽しいよ。[r]
[sp]僕も花が好きだし、お祖母様も優しい。[r]
[sp]ただ……」[p]
[whosay name=文矢 color="#538a8a"]
「ただ？」[p]
[whosay name="華織" color="olivedrab"]
「それ以外なくて、とても……退屈しているんだ。[r]
_ ……これでは、まともな図案も思いつきやしないよ」[p]
[whosay name=文矢 color="#538a8a"]
(君は、退屈ではなくて……まぁそんなことは、いいだろう)[p]
[whosay name=文矢 color="#538a8a"]
「そういえば、名乗ってなかったね。[r]
[sp]僕の名前は文矢。 [名字]文矢だ。[r]
[sp]君は？」[p]

[whosay name="華織" color="olivedrab"]
「華織。四条華織。[r]
_ 女みたいな名前って思うだろう？」[p]

[whosay name=文矢 color="#538a8a"]
「そんなことはないよ。[r]
[sp]花に縁がある者として、立派な名前だと思う」[p]

[whosay name="華織" color="olivedrab"]
「ありがとう。[r]
[sp]僕も文矢の名前を素敵な名だと思う」[p]

[whosay name=文矢 color="#538a8a"]
「華織。僕も退屈していたんだ。遊ばないかい？[r]
_ できれば、将棋があるといいな。かけっこする歳でもないからね」[p]
[whosay name="華織" color="olivedrab"]
「！ あるよ。ちょうど西洋四阿(ガゼボ)に置いたままだ」[p]
[whosay name=文矢 color="#538a8a"]
「よし。決まりだ。休憩のときくらいは、別のことをしようじゃないか」[p]
#
これが華織と僕の出会いだった。[r]
後で聞くと華織の兄弟は皆、仏蘭西に留学していて、祖母と二人だけで暮らしていたらしい。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「昔の華織様は、どこか儚げでしたわね」[p]
[whosay name=文矢 color="#538a8a"]
「そうだね。今にしてみたら、華織は変わったよ」[p]
[whosay name=文矢 color="#538a8a"]
「でも、華織の雄志は、変わってなくて安心したよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様の雄志？」[p]

××05年の冬がせまってきた頃合い。[p]
僕のとある決意は、迫る寒さと反比例して静かに闘志を燃やしていた。[p]
[whosay name=文矢 color="#538a8a"]
「華織、いつ手紙のやりとりをしてもいいように、僕も、父みたいな立派な外交官になろうと思うんだ」[p]
#
僕の熱意ある決心に対して、存外、華織は軽く答えた。[p]
[whosay name="華織" color="olivedrab"]
「そうなんだ。[emb exp="sf.father_name"]が外交官だから、すぐになれるよ」[p]
[whosay name=文矢 color="#538a8a"]
「……違うよ、華織。[r]
[sp]華織は、本当に箱入り息子だなぁ」[p]
[whosay name="華織" color="olivedrab"]
「え？……そうなのかな」[p]
#
僕の本音入りの言葉さえ、ふんわりとかわしてしまう辺り、本当に華織は、箱入り息子のようだ。[p]
[whosay name=文矢 color="#538a8a"]
「僕がいう外交官は、コネでなったり、家の世襲でなれる外交官ではないんだ」[p]
[whosay name="華織" color="olivedrab"]
「家の世襲で……」[p]
[whosay name=文矢 color="#538a8a"]
「本当の実力のある外交官っていうことだ」[p]
[whosay name="華織" color="olivedrab"]
「本当に実力のある……」[p]
#
華織は、何故か僕の言葉を反芻するように呟くばかりだった。[p]
[whosay name=文矢 color="#538a8a"]
(家の世襲で華道家になる華織には、難しい話題だったかな……？)[p]
[whosay name=文矢 color="#538a8a"]
「とにかく。しばらくは勉強のために此処に来ることはできなくなる」[p]
[whosay name="華織" color="olivedrab"]
「そうなんだ……寂しくなって、いやだな」[p]
[whosay name=文矢 color="#538a8a"]
「ふう。君も、14にもなるのだから、しっかりした男になりなよ。
家も近いのだし、たまになら君から会いにきてもいいから」[p]
[whosay name="華織" color="olivedrab"]
「うん……そうだね」[p]
[whosay name=文矢 color="#538a8a"]
(わかってるのかなぁ)[p]

#.
会いに来てもいいといったが、華織は一向に来ることはなかった。[p]

;遠慮して会わなくなった華織
[whosay name=文矢 color="#538a8a"]
「華織の奴、こっちが会わなくなった途端、本当に会わなくなったな……」[p]
[whosay name=文矢 color="#538a8a"]
(どうでもいいのかもしれないな……それより、勉学の続きをしないと……どうしようか)[p]
[whosay name=文矢 color="#538a8a"]
「仏蘭西語って、何でこんなに難しいんだ……」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
(文矢、頑張っているな……)[p]

#
一方その頃の華織は。[p]
[whosay name="華織" color="olivedrab"]
「文矢、頑張っているだろうか」[p]
[whosay name="華織" color="olivedrab"]
「ぼんやりしている僕が邪魔したら悪いけれど……文矢を応援するには何ができるだろう？」[p]
[whosay name="華織" color="olivedrab"]
「そんなことを考えて、早何日たったか……花が好きって以外は、何にも出来ないしどうしよう……」[p]
[whosay name="華織" color="olivedrab"]
「早く僕も、本当に実力ある華道家になりたいな」[p]
[whosay name="華織" color="olivedrab"]
(ちょっと、気晴らしに廊下を散歩してみよう)[p]
・・・・・・[p]
[whosay name="華織" color="olivedrab"]
(ふぅ……大抵、こんなことしても、良いことを思いつかないっていうのは百も承知なんだけどね)[p]

[whosay name="四条悠次郎" color="#9B608B"]
 「語学の教師ですか」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「あぁ、文矢の家庭教師に良い先生をご存知ないかと思いまして。このままでは、あの子は諦めてしまうかもしれない」[p]
[whosay name="華織" color="olivedrab"]
(そんな……！ どうしよう……僕が、できることって……)[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「……なんて、まぁ大丈夫でしょうが、是非、仏蘭西人の知人が多い悠次郎さんに語学教育で著名な先生を紹介してほしい」[p]
[whosay name="四条悠次郎" color="#9B608B"]
「もちろん！友人の[emb exp="sf.father_name"]さんの頼みなら、喜んで素晴らしい教師をお呼びしましょう」[p]
;足音SE
[whosay name="四条悠次郎" color="#9B608B"]
(？ ……今、華織がいたような？)[p]

磯野
「文矢様、今、よろしいでしょうか？」[p]
[whosay name=文矢 color="#538a8a"]
「あぁ、いいよ。 磯野、丁度お茶がほしいところなんだ」[p]
磯野
「はい。お二人にお持ちします」[p]
[whosay name=文矢 color="#538a8a"]
「ふたり？」[p]
磯野
「申し遅れましたが、華織様がお見えになられました」[p]
[whosay name=文矢 color="#538a8a"]
「わかった、通しておくれ」[p]
[whosay name=文矢 color="#538a8a"]
(なんだい、いまさら……)[p]
[whosay name="華織" color="olivedrab"]
「文矢、これ……」[p]
華織は、一度、崩してもってくるはずの生花をそのままに生けて持ってきたようだ[p]
さぞ、ここまで来るには恥を忍んだであろう[p]
[whosay name=文矢 color="#538a8a"]
「これは……？」[p]
#
僕は、急なことに驚き、華織が手にしていた生け花をマジマジと見つめた。[p]
[whosay name="華織" color="olivedrab"]
「沈丁花と、ライラックとその葉を使って円を描いた」[p]
[whosay name=文矢 color="#538a8a"]
「円？」[p]
またまた友人の意をつかめず、僕は、情けなくぽかんと口をあけてしまった。[p]
[whosay name="華織" color="olivedrab"]
「円には、成すべきことを成就させる力がある。
沈丁花の花言葉は栄光、不滅…
 ライラックの花言葉は思い出と友情なんだ」[p]
[whosay name=文矢 color="#538a8a"]
「華織……」[p]
疑ってしまった分に華織の行動に不覚にもじんわりと、きてしまった。[p]
[whosay name=文矢 color="#538a8a"]
(こんな時期に花を取り寄せたのも、さぞ大変だったであろうな……それとも、あの巨大な温室から探り出してきたのかい？)[p]
[whosay name="華織" color="olivedrab"]
 「文矢のおかげで、華道も、もっと楽しくなったんだ」[p]
[whosay name="華織" color="olivedrab"]
「君と僕のお父様達の話で、試験を諦めるかもしれないって聞いて……こんなことしかできなくて」[p]
[whosay name="華織" color="olivedrab"]
「絶対に諦めちゃだめだ！[r]
諦めたら僕は、華道しかできない僕は
他に君を応援する術を知らない……」[p]
[whosay name=文矢 color="#538a8a"]
(華織、君って奴は、なんて……)[p]
[whosay name=文矢 color="#538a8a"]
「ありがとう。大丈夫だ、華織。
 諦めないよ。もっと頑張ってみるよ」[p]
[whosay name=文矢 color="#538a8a"]
(ずっと心配して気を使ってくれてたんだね)[p]
@jump storage=sijyou_3_1b.ks target=*modoru
;四条 華織と文矢
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
[current layer="message0"
[freeimage layer = 27]
[wait time=10]
[return]
