;=============================================
;イベント２回目【手紙が届くその２】5月お琴のお稽古を２回以上
;=============================================
;【背景】お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 通常
（あの手紙が嬉しくて最近お琴を中心に練習しているけれど
[sp] また聞いてくれくれたりするのかしら？
[sp] それにしても簡単な曲だけでも弾けると嬉しいものね）[p]

;【SE】鳩の鳴き声

;【立ち絵】主人公 驚
「もしかして！」[p]

;【SE】襖を開ける

;【SE】鳩の鳴き声

;【立ち絵】主人公　微笑み
「やっぱり！あの時の鳩さんだわ[r]
[sp] ……また琴の上にとまって[r]
[sp] そこがお気に入りなの？）[p]

;【SE】鳩の鳴き声

;【立ち絵】主人公 通常
「待ってね。」[p]

;【SE】紙の音（カサッ）
;【SE】紙に触れる（パラリ）

[手紙]

琴の奏者様へ[l][r]
[r]
[sp] 緑照り映える時節
[r]
[sp] この手紙は貴方様に[r]
届いていますでしょうか？　[r]
[r]
[sp] また貴方様の琴の音を聞きました。[r]
少し上達されましたね[r]
[sp] 心から嬉しく想います。[r]
[r]
[sp] 僕の母が琴がとても上手で[r]
僕は母の琴の音色が好きでした[r]
[sp] 貴方様の音は母と違った魅力があります。[r]
[sp]母は華やかで優美な調べでした。[r]
[sp]貴方の音は初々しく楚々とした調べです。[r]
[sp]つま弾く音ばどの音もとても丁寧な響きを持っていて[r]
今後基礎を覚えたらどんな風に曲を奏でるのか楽しみです。[r]
[r]
[sp]極めることは貴方様の為ににも[r]
なると思います。[r]
[r]
[sp] 続けることは嫌な事もありますが[r]
喜びも多くあります。[r]
[r]
[sp] また貴方様の琴の音が
聴けることを願っています。[p]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【背景】お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公目パチ1回]
;【立ち絵】主人公　微笑み
「ふふ……もっとお琴を練習しましょう」[r]
[主人公目パチ1回]
;【立ち絵】主人公　目伏せ　ほほ染
「また上手になったらお手紙頂けるかしら？　」[r]
（楽しみだわ……）
??

