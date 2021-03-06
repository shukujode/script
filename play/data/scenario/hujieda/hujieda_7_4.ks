;=============================================
;イベント４回目【手紙を出す】７月２回以上お琴のお稽古
;=============================================
;【背景】お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 微笑み
「お手紙書けたわ！　」[r]
[sp]私からの手紙も喜んでくれるかしら？　 [p]
;【SE】紙の音（カサッ）
;【SE】紙に触れる（パラリ）

[手紙]

鳥文の君様へ[l][r]
[r]
[sp] 初めてお手紙を差し上げます。[r]
[sp]貴方様の事を鳥文の君様と書いてもいいでしょうか？[r]
私は[名字]　[名前]と申します。[r]
[r]
[sp]いつもお琴の感想をありがとうございます。[r]
[sp] いつもお稽古の励みとなっています。[r]
[r]
[sp]先日の御手紙を読み、私も練習のし過ぎはよくないと思い、[r]
初めてお琴の曲を聴いた気持ちを思い出し、[r]
落ち着いて音を出すようになりました。[r]
[r]
[sp]最近私の弾く音色も変わってきたと感じています。[r]
[r]
[sp]先生にも私の事を熱心な生徒だと言っていただき、[r]
まだ早いと言われつつも六段の調べの楽譜を頂けました。[r]
六段の調べが弾けるようになれたらまた弾ける曲が[r]
増えるのが楽しみです。[r]
[r]
[sp]これほどお琴に夢中になったのも鳥文の君様のおかげです。[r]
貴方様は私にたくさんの事を教えてくれています。[r]
[r]
[sp]最近よく鳥文の君様の琴を考えています。[r]
どんな方なんだろうと……[r]
[sp]よければ鳥文の君様の事も教えてください。[r]
[r]
[sp]お手紙心よりお待ちしています。
[sp][sp][sp][sp][sp][sp][sp][sp][sp][sp][sp かしこ　　　　　　　　　　　　　　　　　　　　　　　　　
[sp][sp][sp][sp][sp][sp][sp][sp][sp][sp][sp] [名字]　[名前] [p]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
;【背景】お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公目パチ1回]
＃
わたしは琴に向かい、
琴を弾くしばらく弾き続けた
ふわっと琴の端に上に鳩が止まる

;【SE】鳩の鳴き声

[主人公通常]
[主人公目パチ1回]
;【立ち絵】主人公　微笑み
「今日も手紙がくくってあるわね。[r]
……ありがとう。[r]
今日は私も返事をかいたの待ってね」[p]

;【SE】紙の音（カサッ）
;【SE】紙の音（カサッ）

＃
私は鳩の足に括り付けてある手紙をほどき
自分の手紙を同じように足に括り付けた

;【立ち絵】主人公　微笑み
「鳥文の君へよろしくね」[p]

;【SE】鳩の鳴き声

＃
鳩が飛び立つのを
見送って私は手紙を開いた。

;【SE】紙の音（カサッ）
;【SE】紙に触れる（パラリ）

[手紙]
琴の奏者様へ[l][r]
[r]
[sp]盛夏のみぎり、[r]
[r]
[sp]また貴方様の演奏を聴きました [r]
音色がとても暖かく優しい響きを持っていました[r]
[r]
[sp]以前聴いた痛々しさはどこにもなく[r]
澄んだ音をかき鳴らされています。[r]
[r]
貴方様は心映えの素晴らしい方 [r]
なのかもしれませんね。[r]
[r]
[sp]偶然でいいので一目会いたいなどと[r]
思っていました。[r]
[r]
[sp]……申し訳ないこんなことを書いて[r]
ですが紙は貴重なのでこのまま綴ります。[r]
[r]
[sp]僕は心から貴方様成長を喜ばしく[r]
本当に、これほど短期間に[r]
成長されると思っていませんでした。[r]
[r]
[sp]きっと貴方様はこれからも成長できます[r]
僕も貴方様の成長が楽しみです。[r]
[r]
[r]
追伸
[sp]僕の伝書鳩でが最近貴方様のところへ[r]
行っていませんでしょうか？[r]
[r]
この伝書鳩は琴の音色が気に入っているのか[r]
よく母のお琴の練習を聴いていました。[r]
貴方様の邪魔になっていないといいのですが。[p]
[resetfont]
;【SE】紙に触れる（パラリ）
[主人公通常]
[主人公目パチ1回]
;【立ち絵】主人公　目伏せ頬染
「一目で会いたい……。[r]
私も同じ気持ちだわ」[r]
（いつも優しい言葉で励ましてくれる）[p]

＃
私は鳩の飛び立った空を見上げた

[主人公通常]
[主人公目パチ1回]
;【立ち絵】主人公　横顔
最近は文を付けないで来ることも[r]
たまにあるけど私の琴が気に入ってくれたのね[r]
……いつか鳥文の君へ会えるかしら。[p]

