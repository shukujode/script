;=============================================
;手紙編
;=============================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[eval exp="sf.FButton='OFF'"]
;=============================================
;=============================================
;◆イベント中に届く手紙◆ イベント後に「文箱」から読めるようにするために、このファイルに載せています(◆jsYiJcqRkk
;=============================================
;『最初の手紙』←仮タイトルです
;=============================================
*katuraginomiya_fumi00
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『最初の手紙』[p]
[endif]
[手紙葛城宮 fumi_number=1]
[font color=navy size=21]

[名字]　[名前]殿へ[l][r]
[r]
　先日は色々と失礼したが[名字]殿が気を悪くしていないと[r]
いいのだが。[r]
[r]
[sp]
[if exp="f.katuraginomiya_only == 1 "]
梅雨の晴れ間、
[else]
梅雨が明けた明るい日差しの中、
[endif]
;↑つづきが入るので[ｒ]です↓
町で君と出会い率直に[r]
君をとても好ましく思った。[r]
[sp]女性を心から美しいと思ったのは君が初めてだ。[r]
[r]
;アイコンにかかる
[sp]身分の所為か性格の所為か、私の周囲にいる女性は、[r]
[sp]　　　私に媚か恐れをもっている者が多いが、[r]
[sp]　　　君は佇まいが、淑やかなだけでなく、初々しく[r]
[sp]　　　楚々として、目が澄んでいた。[p]

[sp]君の噂を耳にし、君が手紙を交わし始めたと知った。[r]
そして、私は手紙を綴るに至っている。[r]
[r]
[sp]私はこういった[ruby text=たぐい]類の手紙を書いたことがないので、[r]
少々、戸惑っている。[p]
[r]
[sp][r]
私は遠回しな言い方は苦手だ。[r]
[sp]こうして手紙を出すという行為が、求婚の意味を[r]
含んでいることも、理解した上で、私は、君と手紙を[r]
交わしたいと考えている。[r]
[r]
[sp]君の事を知りたいと思ったのだ。[r]
[r]
[r]
[sp]心より返信を待つ。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
[resetfont]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆イベント中に読むため未読→既読処理はコメントアウトします。f.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	;[eval exp="f.midoku_list_hairetsu[3][1] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=1]

;=============================================
;◆話題への返事◆
;=============================================
;『趣味について』
;=============================================
*katuraginomiya_fumi01
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『趣味について』[p]
[endif]
;#
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 はお変わりなくお過ごしであろうか？[r]
[sp]先日は便りを感謝する[r]
[r]
[sp]趣味は歌を詠む事だろうか特に古人の和歌など[r]
おもむきや心情など感慨深く我が国の良さなどを感じられる。[r]
[sp]習慣というか皇族は月に一回は和歌を詠むので[r]
自然などいい光景が見れた時などメモに取る時もあるな。[r]
[r]
[sp]君も和歌は好きだろうか？[r]
[sp]それから君の趣味も知りたいと思っている。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][2] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『仕事について』
;=============================================
*katuraginomiya_fumi02
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『仕事について』[p]
[endif]
;#
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 は穏やかにお過ごしであろうか？ [r]
[sp]先日は便りを感謝する。[r]
[r]
[sp]海軍大佐の職に就き貴族院の議員を務めている。[r]
[sp]自分も未熟さを多々感じる事が多々あるだが[r]
いずれは克服するつもりでありやりがいを感じているのだ。[r]
[r]
[sp]最近では職業婦人も増えてきた良家の子女が職に就くのは[r]
好ましくないだろうが君は働けるとしたらどんな職に就きたい？[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][3] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]


;=============================================
;◆話題への返事◆
;=============================================
;『友人について 』
;=============================================
*katuraginomiya_fumi03
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『友人について』[p]
[endif]
;#
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 はお変わりなくお過ごしであろうか？ [r]
[sp]先日は便りを感謝する。[r]
[r]
[sp]友人と聞かれると色々と留学での日々事を思い出す。[r]
[sp]そういえば学友と音楽活動した事もあったな。[r]
[r]
[sp]あちらでは我が国のように遠回しで発言すより[r]
はっきり意思を示すことが好まれた。[r]
[sp]口論になる時もあったが私もはっきり意思を示す方か性に合う。[r]
[r]
[sp]　　……今では学友と連絡が途絶えている[r]
[sp]　　だがいつまでも友人は大切なものだな。[p]
[sp]今度は君の友人関係についてもききたい。 [r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][4] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]

;=============================================
;◆話題への返事◆
;=============================================
;『 家族について 』
;=============================================
*katuraginomiya_fumi04
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『家族について』[p]
[endif]
;#
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 は元気にお過ごしであろうか？ [r]
[sp]先日は便りを感謝する。[r]
[r]
[sp]今は父宮と母宮と私のみだな。[r]
[r]
[sp]妹宮と弟宮がいたのだが幼いうちに夭折した。[r]
[sp]今では信じられないと思うが私も幼いころは体が弱かった。[r]
[p]
[sp]母宮も皇族出身で血が濃い、[r]
血が濃くなるというのはやはり悪い結果が現れる。[r]
[sp]我が国も開かれた皇室になるといいのだがな[r]
[r]
[sp]君の家族のご健勝を祈る。 
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][5] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]

;=============================================
;◆話題への返事◆
;=============================================
;『 将来について 』
;=============================================
*katuraginomiya_fumi05
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 将来について 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 はお変わりなくお過ごしであろうか？ [r]
[sp]先日は便りを感謝する。[r]
[r]
[sp]今は国の制度を少しずつ変えていきたいと思っている。[r]
いずれは皇族や華族のみの貴族院も解体するかもしれないし[r]
やはり私の立場で権力を強く持つのは好ましくないと思っている。[p]
[sp]制度を民主化した後はそうだなもう少し自由に生きたいな。[r]
[r]
[sp]君は将来についてはどんな風に思っているだろうか？ [r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][6] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]

;=============================================
;『 読書について 』
;=============================================
*katuraginomiya_fumi06
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 読書について 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 は穏やかにお過ごしであろうか？ [r]
[sp] 先日は便りを感謝する。[r]
[r]
[sp]静かに本を読むという時間も今ではないが、[r]
幼い頃は三国志演義が好きで軍司というものに憧れたものだ。[r]
[sp]巡り合わせとは不思議なもので、[r]  
今は軍では参謀の役職に就いている。[r]
[r]
[sp]君も本が好きなのだろうか？[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][7] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;『 スポーツについて 』
;=============================================
*katuraginomiya_fumi07
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 スポーツについて 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 は元気にお過ごしであろうか？ [r]
[sp] 先日は便りを感謝する。[r]
[r]
[sp]幼い頃は剣道を習い、 [r]
留学先ではサッカーの試合に参加したな。[r] 
[r]
[sp]純粋にスポーツは楽しい。と思っている。[p]
[sp] 一定のルールに従って勝ち負けを争い、熱中できる。[r]
[sp] スポーツは私は見るのも参加するのも好きだな。[r]
[r]
[sp]君はスポーツをしたことがあるだろうか？[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][8] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;『 食事について 』
;=============================================
*katuraginomiya_fumi08
*katuraginomiya_fumi080
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 食事について 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 は変わりなくお過ごしであろうか？ [r]
[sp] 先日は便りを感謝する。[r]
[r]
[sp]私は食に強いて言う好き嫌いはないな。 [r]
[p]
[sp]今、流行りの三大洋食ライスカレー、コロッケ、トンカツ[r]
というのも町で食べたことがあるが、[r]
我が国の人用が好むように取り入れられ、作られている。[r]
[r]
[sp]ただ食欲は旺盛で薄味で育ってきたため敏感な方だと自覚がある。[r]
どんな食事にも塩加減や鮮度などは大切でそれらが、[r]
合わないものは不味いと感じてしまうな。[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][9] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;『 観劇について 』
;=============================================
*katuraginomiya_fumi09
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 観劇について 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 はお健やかにお過ごしであろうか？ [r]
[sp] 先日は便りを感謝する。[r]
[r]
[sp]観劇は留学した折は何度か観劇にもいった。 [r]
[sp] 今では行く機会もそうはないが。[r]
[r] 
[sp]悲劇や喜劇というのは人の心を動かし、[r]
実際行ってみた演劇も壮大で演出も素晴らしかった。[p]
[sp]ただ物語には少々疑問をもつものがあったり、[r]
最終的な結末が受け入れがたいと感じる時もある。[r]
[r]
[sp]君は観劇に言ったらどのような感想を持つのだろうか。 [r]
[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][10] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;『 猫について 』
;=============================================
*katuraginomiya_fumi10
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 猫について 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 はいかがお過ごしであろうか？ [r]
[sp] 先日は便りを感謝する。[r]
[r]
[sp]猫というと幼少の頃、子猫を拾ったが [r]
飼うのを反対されて、知人に里親になってもらった事が[r]
あったな。[r]
[r]
[sp]君も子猫を見たことがあるだろうか？[r]
[sp] とても可愛いものだ。[r]
[r]
[sp] 　　　君の家では動物を飼ったりしたことはあるだろうか？ [r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][11] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;『聞き上手と話し上手について 』
;=============================================
*katuraginomiya_fumi11
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 聞き上手と話し上手について 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 は変わりなくお過ごしであろうか？ [r]
[sp] 先日は便りを感謝する。[r]
[r]
[sp]いち政治家として聞き上手にも話し上手にもなろうと[r]
意識し、努力はしている。[r]
[sp]だが、私の周りにいる者たちとは[r]
意見が合わないと思う事の方が多いな。[p]
[r]
[sp]合わないと思う者と話してても、[r]
正直に言うと少々苦痛を感じることもあるな。[r]
[r]
[sp]そういう時はうまく逃げ道を作っているが[r]
人付き合いとは難しいものだな。[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][12] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;『聞き上手と話し上手について 』２
;=============================================
*katuraginomiya_fumi12
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 聞き上手と話し上手について2 』　　　
[endif]
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿　は変わりなくお過ごしであろうか？ [r]
[sp] 先日は便りを感謝する。[r]
[r]
[sp]君は聞き上手ではないかと私は思っている。[r]
[r]
[sp] いつも私の話をきらきらとした目で、[r]
聞いてくれるので話すのがとても楽しくなる。[p]　　　　　　
[sp]君とずっと話していたいと会うたびに思っている。[r]
[r]
[sp]また君と話したい。 [r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][13] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;『緑の石について 』
;=============================================
*katuraginomiya_fumi13
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 緑の石について 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 は変わりなくお過ごしであろうか？ [r]
[sp] 先日は便りと緑の石を感謝する。[r]
[r]
[sp]この緑の石が何か調べるのも [r]
勿体ないような気がして大切にとっておくことにした。[p]
[r]
[sp] 宝石の原石だとしても[r]
ただの綺麗な緑色の石だったとしても。[r]
[sp] 私にとってはいつか君からもらった思い出の[r]
石になるかもしれないからだ。[r]
[r]
[sp]私は思い出の石になる事を願っている。 [r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][14] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;『写真について 』
;=============================================
*katuraginomiya_fumi14
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 写真について 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 は変わりなくお過ごしであろうか？ [r]
[sp] 先日は便りを感謝する。[r]
[r]
[sp]最近では写真が流行っているし、 [r]
[sp]写真機を持っている家も出てきたな。[r]
[r]
[sp] 私も写真を見るのは絵葉書を見るぐらい楽しい。[r]
だが、実物のものと雰囲気が違うなと感じるものもある。[r]
[r]
[sp]写真も一種の芸術かもしれないな。 [r]
[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][15] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;『一日のはじまりについて 』
;=============================================
*katuraginomiya_fumi15
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 一日のはじまりについて 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 は変わりなくお過ごしであろうか？ [r]
[sp] 先日は便りを感謝する。[r]
[r]
[sp] 幸先や出鼻をくじかれるという言葉やもあるように[r]
最初は肝心だと私も思う。[r]
[r]
[sp]私は朝一番ジョギングをしている。 [r]
[sp]一見変わらない風景でもたまに小さな発見をしたり、[r]
[sp]自然の風景で心が和むことがある[r]
[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][16] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;『お気に入りの曲について 』
;=============================================
*katuraginomiya_fumi16
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 お気に入りの曲について 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 は変わりなくお過ごしであろうか？ [r]
[sp] 先日は便りを感謝する。[r]
[r]
[sp]欧羅巴では色々な曲と出会ったが[r]
やはり我が国の音楽もいいものだと思う。[p]
[r]
[sp]女性的だが、"さくらさくら"が好きだな。[r]
[sp]"さくらさくら" は、箏の手ほどき曲として[r]
作られたものらしい。[r]
[sp]君もお箏を習っていると聞いた。[r]
[sp]いつか君のお箏を聴いてみたいな。[r]
[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][17] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;『道 』
;=============================================
*katuraginomiya_fumi17
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 道について１ 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 はお元気にお過ごしであろうか？ [r]
[sp] 先日は便りを感謝する。[r]
[r]
[sp]君は要領よく道案内したのだな。[r]
[r]
[sp]長時間迷うと流石に疲れるが、[r]
私は、探検の意味のある道探しは好きだ。[r]
[r]
[sp]無駄な事かも知れないが、新鮮でたまに小さな発見をする。[r]
[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][18] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;『道 』2　２月３週から３月４週まで
;=============================================
*katuraginomiya_fumi18
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 道２ 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp]　[名前]殿 は穏やかにお過ごしであろうか？ [r]
[sp] 手紙を感謝する。[r]
[r]
[sp]道というのは人生にも比喩されることもあるな。[r]
[r]
[sp]道は一つではない、だが、私は信じた道を突き進みたい。[r]
[r]
[sp]将来、多くの人に人に [r]
良い影響を残せるように尽くすつもりだ。[r]
[sp] 　君に私の進んだ未来を見せたいと想う。[r]
[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][19] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;『 変化と永遠 』
;=============================================
*katuraginomiya_fumi19
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 変化と永遠について 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 はお変わりなくお過ごしであろうか？ [r]
[sp]先日は手紙を感謝する。
[r]
[sp] この世で変化しないものというのはないな。[r]
[sp] 形あるものはすべて変化していく、[r]
確かに、あるものすべてが変わるのは寂しい。[r]
[r]
[sp]だが、どう変化させていくかは、人次第でもある。[r]
[sp]大切なものはよく考えて使うといいだろう。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][20] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;=============================================
;◆季節の便り◆
;=============================================
;『 虫干し 』６月ごろの手紙　好感度が一定以上
;=============================================
*katuraginomiya_fumi20
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 虫干し 』[p]
[endif]
;#
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 はお変わりなくお過ごしであろうか？ [r]
[r]
[sp]立夏の折り、梅雨が明け、宮中では「虫干し」を行っている。[r]
[sp]今上帝に呼ばれ宮中に行くと女官たちが忙しくしていた。[r]
[r]
[sp]何百年も虫干しを行い、本を大切にし後世に残していき、[r]
後世へ残すのは大切なことだと思っている[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][21] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]

;=============================================
;◆季節の便り◆
;=============================================
;『 スイカ 』７月頃の手紙　好感度が一定以上
;=============================================
*katuraginomiya_fumi21
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 スイカ 』[p]
[endif]
;#
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 は穏やかにお過ごしであろうか？ [r]
[r]
[sp]三伏大暑の候　日差しが強くなったな[r]
[sp]私は最近では毎日のようにスイカを食べている[r]
[sp]水分補給をしないと倒れてしまうので[r]
君もスイカを食べるといい。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][22] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]

;=============================================
;◆季節の便り◆
;=============================================
;『 夏は夜 』８月頃の手紙　好感度が一定以上
;=============================================
*katuraginomiya_fumi22
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 夏は夜 』[p]
[endif]
;#
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 はいかがお過ごしであろうか？ [r]
[r]
[sp]残暑の厳しき折　夏は夜とかの清少納言が綴ったように[r]
やはり夏に見上げる夜空はいい、月は美しく、星も美しい、[r]
また祭りの花火も美しいな……。[r]
[r]
[sp]君は花火を見たことがあるだろうか？　[r]
いつか君と二人で見れるといいだろうな。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][23] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;◆季節の便り◆
;=============================================
;『 季節は巡る 』9月頃の手紙　好感度が一定以上
;=============================================
*katuraginomiya_fumi23
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 季節は巡る 』[p]
[endif]
;#
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 はお健やかお過ごしであろうか？ [r]
[r]
[sp]秋霜の折　少し朝晩が肌寒くなってきた。[r]
[r]
[sp]庭の楓が紅葉を始めている。[r]
[sp]君と出会い手紙を交わすようになったのは梅雨の季節だな、[r]
季節は目まぐるしく変わるな。[r]
[r]
[sp]季節の変わり目は体調を崩しやすい。[r]
[sp]君も体調には気を付けて[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][24] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;=============================================
;◆イベント中に届く手紙◆ イベント後に「文箱」から読めるようにするために、このファイルに載せています(◆jsYiJcqRkk
;=============================================
;◆葛城宮ルート時子さんの散策イベントを見ている場合に自動的に2週間後に手紙
;=============================================
;『 伊能殿について 』
;=============================================
*katuraginomiya_fumi24
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 伊能殿について 』[p]
[endif]
;#
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 はお健やかにお過ごしであろうか？ [r]
[r]
[sp]先日、君から手紙で伊能殿の事を知り、[r]
悪いと思ったが彼の事は事前に調査して[r]
三宮家当主に御令嬢と彼の縁談を勧めることが[r]
可能か考えようと思った。[r]
[r]
[sp] そして報告書を読んで私も彼に興味を持ち、会う機会を設け[r]
随分と伊能殿と話しが弾んだ。[p]
[r]
[sp] 彼は温和ながら頭の切れる者で、[r]
 率直に私の協力者になって欲しいと思った。[r]
[sp]丁度秘書が都合で辞めていたので後任の者を[r]
探していたところだったのでどうかと尋ねた。[r]
[r]
[sp]少し考えさせてほしいと言っていたが、[r]
あの様子なら快諾してくれると思っている。[r]
[r]
[sp] 彼に会う機会を与えてくれて感謝する。[r]
[r]
[sp]また君にゆっくり会える日を楽しみにしている[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][25] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;葛城宮ルート１０月１周に届く
;=============================================
;『 従妹宮の件について 』
;=============================================
*katuraginomiya_fumi25
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 従妹宮の件について 』[p]
[endif]
;#
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 はその後いかがお過ごしであろうか？ [r]
[r]
[sp]先日の一件は私も心から自分自身が不甲斐なくまた、[r]
君とご家族の方に申し訳なく思っている。[r]
[r]
[sp] 従妹宮は皇后陛下の呼び出しの元、[r]
厳しい注意を受け陛下から自宅謹慎を命じられた。[r]
[r]
[sp]　　　だが、外聞が悪いという事で、[r]
[sp]　　　叔父宮が従妹宮の自宅謹慎を表向きには体調不良、[r]
[sp]　　　事件を知っている者達を口止め、この不祥事をもみ消した。[p]
[sp]叔父宮から君にも私からこの不祥事を黙認するようにと[r]
伝えるように頼まれた。[r]
[sp] あきれたものだろう。[r]
[sp]私は従妹宮を度し難く、許しがたく思っている。[r]
[r]
[sp] それでも従妹宮の処分をこれより重くすれば[r]
事態がややこしくなるのだ。[r]
[sp]そして君も処分が重くなることを望んでないように察している。[r]
[r]
[sp]君は宮中の者たちや一族の者たちと折り合えるようにしたいと[r]
願っているように思えるのだ。[p]
[r]
[sp]私は君の傍で色々と変えていこう。[r]
[sp]君が私の傍で幸せになるようにしたいのだ。[r]
[r]
[sp]では君の健康と活躍を心から祈っている。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][26] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;8月、event3で届く手紙『 お茶事について 』←仮タイトルです
;=============================================
*katuraginomiya_fumi26
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 お茶事について 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
[sp]時に皇后陛下からのお茶事の招待状は、もう届いたで[r]
あろうか？[r]
[r]
[sp]残暑厳しき折、今上、皇后両陛下に[r]
君を婚約者候補として認めて頂くように交渉を行い、[r]
結果、皇后陛下自ら君を未来の親王妃として[r]
ふさわしいか確かめると言われ、直接会われるという[r]
 運びとなった。[r]
[r]
[sp]　　　少々大事になってしまったと反省している。[p]
;アイコンに被ってしまう
[sp]だが皇后陛下は誰にでも分け隔てなく接する方で[r]
純粋に君に興味を持たれたようだ。[r]
[r]
[sp]君が私との結婚を考えられないなら断って構わない。[r]
[sp]だが私の婚約者候補として挙げられるのが、[r]
嫌でなければ受けて欲しい。[r]
[r]
[sp]いや、心から君が受けてくれるのを望んでいる。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
 [手紙葛城宮読了 fumi_number=]
;=============================================
;9月『 婚約について 』←仮タイトルです
;=============================================
*katuraginomiya_fumi27
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 婚約について 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[font color=navy size=21]
[名字]　[名前]殿へ[l]
[r]
[r]
[sp][名前]殿は変わりなく、元気でいるだろうか？[r]
[r]
[sp]先日のお茶事からそうたってないが、君が正式に皇室で[r]
認められたことで周囲の者たちが色めき立ち、[r]
もっと身分に相応しい婚約者を決めようとしているが、[r]
私が婚約したいのは君だけだ。[r]
[sp]私は君に婚約を申し込む。[r]
[r]
[sp]　　近く、当家の主務事務官と宮内省の宗秩寮総裁が、[r]
[sp]　　 [名字]家当主に婚約の申し込みをしに訪れる。[p]
;アイコンに被るので[sp]してます。
[sp][r]
[r][r]
[sp]勿論、私は君に無理強いはしたくない。[r]
[sp]重要な事なので君も周囲の者たちと、よく話し合って決めて[r]
くれるとよい。[r]
[sp]返答がどちらにせよ私は受け止めるつもりだ。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]

;=============================================
;10月『 話がしたい 』←仮タイトルです
;=============================================
*katuraginomiya_fumi28
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 話がしたい 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
[sp]仲秋の候、[名前]殿は息災であろうか？[r]
[r]
[sp]つい先日君と一緒に三宮邸を散歩し[r]
夢を語ったのが遠い昔のようだ。[r]
[r]
[sp]君ももう海軍の汚職事件を知っているだろう？[r]
[sp]軍人が権力を持ち政治に関わるのは良くないことだ。[r]
軍国主義に走る危険性がある。[p]
[sp]しかし私自身もこの時代皇族に生まれた多くが、[r]
軍人になるのもあって私も軍人でもある。[r]
[r]
[sp]私も政治に関わるべきではなく、辞職するつもりで[r]
いる。[r]
[r]
[sp]君に話しがある。[r]
[r]
[sp]近いうちにまた会おう。[r]
[sp][r]
[sp]　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]

;=============================================
;2月『 感謝 』←仮タイトルです
;=============================================
*katuraginomiya_fumi29
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 感謝 』[p]
[endif]
[手紙葛城宮 fumi_number=]
[font color=navy size=21]
[名字]　[名前]殿へ [l][r]
[r]
[sp]晩冬の折　[名前]殿は息災にしているだろうか？ [r]
[r]
やっとひと段落ついた。[r]
君がわたしのために強くなると言ったように[r]
私も変わろうと思った。[r]
[r]
また自分のすべき事が分った。[r]
君にはいくら感謝しても足りないだろう。[p]
国民の声もあって私は議員を続けることになり、[r]
今も目まぐるしく忙しくしているが、今は未来への[r]
希望であふれている。[r]
[r]
君も体には気をつけて[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]


;=============================================
;◆時子さんからの手紙葛城宮の伊能殿についての手紙から１週間後
;=============================================
;『 未来へ向けて 』
;=============================================
*tokiko_fumi_katuraginomiya
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『 未来へ向けて 』[p]
[endif]
[手紙時子]
[名字]　[名前]様へ[l][r]
[r]
[sp]拝啓　[名前]さんは元気にお過ごしでしょうか？ [r]
[r]
[sp]伊能さんが葛城宮殿下の秘書となる事が決まり、[r]
私と伊能さんも手紙を交わす事になりました。[r]
[r]
[sp] お父様は葛城宮殿下の後押しもあり、[r]
しぶしぶお手紙だけは許して下さったようなものです。[p]
[sp]けれど条件をだされましたわ。[r]
伊能さんが国への貢献が認められ、新華族に叙せられるまでは[r]
婚約を認めないとおっしゃって、[r]
それも五年以内と期限をきられましたの。[r]
[p]
[sp]けれど 結婚前は侍女となる事も許していただいたし[r]
お父様もきっと伊能さんのこともいずれは認めてくださると思います。[r]
[r]
[sp]諦めかけていたときに[r]
相談に乗って頂いてありがとうございます。[r]
[sp]私達お互いに幸せな結婚をいたしましょうね。[r]
[r]
[sp]それでは[名前]さん、またお会いしましょう。[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　敬具[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　三宮　時子[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙読了]
;=============================================
;event3　侍従からの手紙
;=============================================
*jijyuu_fumi1
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
;↓仮タイトルです
『先日のお茶事について』[p]
[endif]
[手紙侍従]
[font color=navy size=20]
[名字]　[名前]殿へ[l][r]
[r]
　降るような蝉しぐれ、[r]
貴方におかれましては、ますます、ご清祥のことと[r]
拝察いたしております。[r]
[r]
[sp]先日のお茶事により、皇后陛下又、同席した葛城宮妃殿下と[r]
縁子内親王殿下は、貴方を晴仁殿下の婚約者候補として、[r]
容認する意向をお示しになりました。[p]
[sp][r][r][r]
[sp]ですが、他にも何人か晴仁親王殿下の婚約者は挙がっており、
[r]その何人かの方は、皇族又は皇族に連なる方です。[r]
[sp]貴方や晴仁親王殿下もそれを[ruby text=わきま]弁えた上で[r]
今後も節度をもってお手紙を交わすようにされますように。[r]
[r]
[sp]　　　　　　　　　　　　皇后陛下侍従　桂伯爵夫人　範子[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙読了]
;=============================================
;9月1週　文矢からの手紙
;=============================================
*fumi_fumiya
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
;↓仮タイトルです
『親王様との婚約について』[p]
[endif]
[手紙文矢 fumi_number=]
[名前]へ[l][r]
[r]
[sp]そちらは風がススキに揺れる涼しい頃でしょうか？[r]
[sp][名前] は穏やかに過ごしていますか？ [r]
[sp]こちらの仕事もひと段落落ち着き、僕達夫婦も元気に[r]
過ごしています。[r]
[sp]先日、父からの手紙を読み、[r]
[名前]が、親王様に見初められて、婚約者候補としてあげられた事を[r]
知りました。[r]
[sp]あのお転婆だった[名前] もすっかり一人前の淑女になったとも[r]
書かれてあり、驚きを隠せません。[r]
[r]
[sp] また[名前] が嫁ぐ前に会いたいと思っています。[p]
[sp][r]
[sp] まだ候補だと聞きましたが[名前]が親王妃となる[r]
のでしょうか？[r]
[sp] 恐れ多く、誉れ高いことですがとても苦労すると[r]
思ってしまいます。[r]
[sp]父や磯野ともよく相談して決めるといいでしょう。[r]
皆、[名前]の意思を尊重してくれると思います。[r]
[r]
[sp]それでは皆が健やかに過ごせることを祈っています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　[r]
[sp]　　　　　　　　　　　　　　　　　　　　[名字]　文矢 [p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙読了]

;=============================================
;9月3週　葛城宮妃からの手紙
;=============================================
*fumi_hahamiya
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
;↓仮タイトルです
『ご挨拶』[p]
[endif]
[手紙葛城宮妃殿下]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
[sp]秋色次第に濃く、[r]
[sp]貴方には、一段とご清祥の由と存じます。[r]
[r]
[sp]誠に申し上げにくいのですが、[r]
息子は、縁談をいくら勧めましても、手紙を[r]
書こうとするどころか破談にしてきました。[r]
[r]
[sp]息子は意思が強くときに激しくすら感じる時があります。[r]
[sp]その息子が気に入った方だから不安に思っていたのですが[r]
貴方はまるで淑女の鑑のような方で安心しました。[p]
[r]
[sp]貴方は、もうすでに息子との婚約は内定している[r]
のです。[r]
[sp]少々の身分のことは気にされなくても大丈夫ですわ。[r]
[sp]私も貴方のことは、お茶事の時から好ましいと思って[r]
おりますの。[r]
[r]
[sp]ささやかながら貴方に振袖を仕立てました。[r]
[sp]この縁談が両家にとって良きものであること願って。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　葛城宮妃　咲子[p]
[sp][r][r][r]
追伸　息子は型にはまる事を嫌い、周囲と衝突しています。[r]
私は息子が貴方との婚約で変わるように望んでいますわ。[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙読了]

;=============================================
;9月4週　従妹宮からの手紙
;=============================================
*fumi_itokomiya
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
;↓仮タイトルです
『　忠告　』[p]
[endif]
[手紙従妹宮]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
[sp]さて、私がこうして筆を取り、お手紙差し上げている理由は[r]
お察し頂けるでしょうか。[r]
[r]
[sp]私も貴方などに長々とお手紙を書きたくございません。[r]
[sp]晴仁親王殿下の婚約を辞退なさい。[r]
[r]
[sp]殿下と貴方は、身分も何もかも違います。[r]
[sp]貴方程度の卑しい身分の方が、殿下の婚約者になったことを[r]
平民たちが喜んでいることも浅ましいと思いますわ。[p]
[r]
[sp]貴方は、これがどれほど異例な事であるか分っているのですか。[r]
[sp]皇族は、皇族同士と結婚するのが常であり、私の父宮や[r]
皇族の方々は、晴仁殿下のみならず、葛城宮王殿下を[r]
何故、貴方と晴仁殿下の婚約を許したか と非難しておいで[r]
ですわ。[r]
[r]
[sp]晴仁殿下は、今上帝の信頼厚く親王の号を持つ方です。[r]
[sp]貴方のような方が殿下の婚約者など我慢なりません。[r]
[sp]貴方はご自分の身の程をわきまえるべきです。[r]
[r]
[sp]　　　　　　　　　　　　　　　　久佐賀宮　志津子[p]
;自動改ページされてしまいますのでｐで止めます(スクリプト担当_2
[sp][r]
追伸　これは忠告ですわ。　有り難く思いなさい。[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	[freeimage layer = 29]	
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙読了]

;=============================================
;◆話題への返事◆
;=============================================
;『さつきについて』
;=============================================
*fumi_satuki
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『さつきについて』[p]
[endif]
;#
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 はお変わりなくお過ごしであろうか？[r]
[sp]先日は便りを感謝する。[r]
[r]
[sp]さつきというのも色鮮やかでいいな。[r]
[sp]さつきには蜜が含まれている事を知っているか？[r]
[r]
[sp]子供の頃、試しに吸ってみたら甘かった。[r]
[sp]蜜蜂も懸命になって蜜を吸うのも頷ける。[r]
[r]
[sp]　　女性は花が好きだと聞いている。[r]
[sp]　　君も花が好きなのだろうか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][28] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『新茶について』
;=============================================
*fumi_sintya
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『新茶について』[p]
[endif]
;#
[手紙葛城宮 fumi_number=]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 は穏やかにお過ごしであろうか？ [r]
[sp]先日は便りを感謝する。[r]
[r]
[sp]私も茶は好きだ。[r]
[sp]心を落ち着けてくれるな。[r]
[r]
[sp]茶といえば君は茶道を習っているか？[r]
[sp]母宮が茶道が得意で私も一通り出来るように[r]
習わされたものだ。[r]
[r]
[sp]　　君はどんな茶が好きだろうか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][27] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]

;=============================================
;『 別れの手紙 』（『最後の手紙』）
;=============================================
*katuraginomiya_fumi_last
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『最後の手紙』[p]
[endif]
[手紙葛城宮 fumi_number=1]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 には、お健やかにお過ごしであろうか？ [r]
[r]
[sp]さて、私は[名前]殿 に多くのものを求めていた。[r]
つまり手紙や、淑女の品格全ての事だ。[r]
[r]
[sp]私は[名前]殿 を一目みて気に入ったことに、[r]
嘘、偽りはない。[r]
[sp] だが、君を私の妃として迎えるのは、難しくなった。[p]
[r][sp][r][r]
[sp]手紙のみの別れの挨拶は失礼だろうが、[r]
もう直接会うわけにもいくまい。 [r]
[r]
[sp]これから、もう会う事もないが、君の活躍を祈っている。[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][29] = 0"]
	;手紙返信ストップ処理	
	[eval exp="f.katuraginomiya_fumi_start=0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]
[イベントシーン終了]
@jump storage="test_katuragi.ks"
[s]
