;=============================================
;イベント3回目【手紙が届くその３】６月お琴のお稽古を２回以上
;=============================================
;【背景】お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公閉伏目パチ1回]
;【立ち絵】主人公　ため息
（簡単な曲は弾けるようになったけれど
お琴のお稽古のやりすぎで指の皮が切れてしまう。
それに押さえの手が痛くなって腕も痛いわ
やっぱり切れてしまうと集中できない）

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]

[whosay name=磯野 color="dimgray"]
「お嬢様、お茶をお持ちしました」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、入っていいわよ」[p]

;【SE】襖を開ける（ゆっくり）

[playse storage=fusuma-open.ogg loop=false ]
[stopbgm]
;【BGM】みやび（磯野テーマ）
[playbgm storage="isono_miyabi.ogg" loop=true]

[whosay name=磯野 color="dimgray"]
「失礼します」 [p]

#
磯野は心配そうに尋ねた。[p]

[whosay name=磯野 color="dimgray"]
「お嬢様、流石にお琴の稽古はやり過ぎではないでしょうか？　[r]
最近は遅くまでお稽古なされてて旦那様も心配されています」 [p]

;【SE】湯のみを置く（コトリ）

[playse storage=tya_yunomi_oku.ogg loop=false ]
お茶の香りにほっとする。[r]

[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 目伏せ
「心配かけて申し訳ないと思っているわ[r]
[sp]でも嗜み程度でなく もっと上手になりたいの」[p]

[whosay name=磯野 color="dimgray"]
「私は熱心にされるのはいい事と思いますので[r]
反対しませんがほどほどにさないませんと[r]
折角の綺麗な指が傷だらけです」 [p]

;【立ち絵】主人公 通常
「ええ、今日はここまでで[r]
[sp]他のお稽古に取り掛かるわ[p]

[whosay name=磯野 color="dimgray"]
「ええ、それがいいと存じます[r]
では失礼します」 [p]
[stopbgm]

;【SE】襖を開ける（ゆっくり）

＃磯野が部屋から出ていき私は[r]
ため息をついた

;【SE】鳩の鳴き声

;【立ち絵】主人公 驚
「鳩さん！」[p]

＃
最近暑くなってきたのでお稽古部屋の[r]
障子も開けたままにしている。[r]
鳩は迷うことなくお琴の上にとまった。[p]

;【立ち絵】主人公 目伏せ
「ありがとう。[r]
でも最近は思うような演奏が出来ていないわ」[p]

;【SE】鳩の鳴き声

;【立ち絵】主人公 通常
「待ってね。」[p]

私は恐る恐る紙に手を伸ばした[r]
うまく弾けれないから[r]
きっと呆れているかしら？　[p]

;【SE】紙の音（カサッ）
;【SE】紙に触れる（パラリ）

[手紙]


琴の奏者様へ[l][r]
[r]
[sp]?雨に萌ゆる緑が風情を漂わせる季節。[r]
[r]
[sp]貴方様におかれましては何かあられたのでしょうか？[r]
[sp]琴の音色がとても痛々しく[r]
いつも丁寧につま弾く響きもブレが感じられます。[r]
[r]
[sp]いえ、一生懸命に取り組まれているのは[r]
伝わって来るのです……。[r]
[r]
[sp]……もしかして指の皮が切れるほどに[r]
練習していらっしゃるのですか？[r]
[r]
[sp]早く上達したい時もあります。[r]
[sp] 僕もある時はそうで楽器を[r]
睡眠を削り弾くこともありました。[r]
[r]
[sp]ですがあまり熱心に練習しても[r]
調子を崩す時もあります。[r]
[r]
[sp] 自分を追い詰めていくことは必ずしも[r]
いい結果をうむとは限りません[r]
ノイローゼになる人も居ると聞きます。[r]
[r]
[sp]自然に触れたりして一度視点を変えて余裕を持ってください。[r]
[r]
[sp]焦らずとも貴方様は無意識で丁寧にお琴を[r]
慈しみ優しく弾けていました。[r]
[sp]必ず上達できる方だと思います。[r]
[r]
[sp]初心を忘れずゆっくり上達していきましょう。[r]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【背景】お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公目パチ1回]
;【立ち絵】主人公　微笑み
「音から察してくれるなんてきっと優しい方なのね」[p]

;【SE】紙に触れる（パラリ）
;【立ち絵】主人公　通常　目パチ
「私もお手紙を返せるといいのだけれど」[p]

