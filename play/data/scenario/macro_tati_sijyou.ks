﻿;==============================
;layer8：他キャラbase（のっぺらぼう）
;layer9:他キャラ口
;layer10:他キャラ目
;layer11:他キャラ眉
;layer12:他キャラエモーション（汗）
;layer13:空(予備
;==============================

*start
;画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[chara_new name="sijyou_base" storage="toumei.gif"]
[chara_show left=1 top=1 layer=8 name="sijyou_base" time=0]
[wait time=10]
[chara_new name="sijyou_kuti" storage="toumei.gif"]
[chara_show left=1 top=1 layer=9 name="sijyou_kuti" time=0]
[wait time=10]
[chara_new name="sijyou_me" storage="toumei.gif"]
[chara_show left=1 top=1 layer=10 name="sijyou_me" time=0]
[wait time=10]
[chara_new name="sijyou_mayu" storage="toumei.gif"]
[chara_show left=1 top=1 layer=11 name="sijyou_mayu" time=0]
[wait time=10]
[chara_new name="sijyou_emo" storage="toumei.gif"]
[chara_show left=1 top=1 layer=12 name="sijyou_emo" time=0]
[wait time=10]

[macro name="四条アップ"]
[kanim keyframe="scale1" name="sijyou_base" time=10]
[kanim keyframe="scale1" name="sijyou_me" time=10]
[kanim keyframe="scale1" name="sijyou_mayu" time=10]
[kanim keyframe="scale1" name="sijyou_kuti" time=10]
[kanim keyframe="scale1" name="sijyou_emo" time=1000]
;スマホフリーズ対策time=10 →おｋ
[wa]
[endmacro]
[macro name="四条サイズ通常"]
[kanim keyframe="no_scale1" name="sijyou_base" time=10]
[kanim keyframe="no_scale1" name="sijyou_me" time=10]
[kanim keyframe="no_scale1" name="sijyou_mayu" time=10]
[kanim keyframe="no_scale1" name="sijyou_kuti" time=10]
[kanim keyframe="no_scale1" name="sijyou_emo" time=1000]
;スマホフリーズ対策time=10 →おｋ
[wa]
[endmacro]

;立ち絵表示[四条ベース着物]
[macro name="四条ベース着物"]
[chara_mod name="sijyou_base" storage="sijyou/base_kimono.png" time=0]
[wait time=10]
[endmacro]


;立ち絵表示[四条ベース羽織]
[macro name="四条ベース羽織"]
[chara_mod name="sijyou_base" storage="sijyou/base_haori.png" time=0]
[wait time=10]
[endmacro]


;立ち絵表示[四条通常]
[macro name="四条通常"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="sijyou_emo" storage="toumei.gif" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条伏目]
[macro name="四条伏目"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条驚き]四条の意外な一面に控えめに驚き
[macro name="四条驚き"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_odoroki.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_ake.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_odoroki.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条困り]
[macro name="四条困り"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条困り微笑み]
[macro name="四条困り微笑み"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条照れ]
[macro name="四条照れ"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="sijyou_emo" storage="sijyou/emo_hohosome.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条照れ目普通]
[macro name="四条照れ目普通"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="sijyou_emo" storage="sijyou/emo_hohosome.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条微笑み]口元だけ笑み
[macro name="四条微笑み"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条笑顔大]
[macro name="四条笑顔大"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_warau.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条笑顔]
[macro name="四条笑顔"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_warau_s.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条真剣]
[macro name="四条真剣"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_ake.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条憂い]
[macro name="四条憂い"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_yokofusi1.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]



;立ち絵表示[四条眉通常]
[macro name="四条眉通常"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条眉通常下]
[macro name="四条眉通常下"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_futuu_sita.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条眉下げ]
[macro name="四条眉下げ"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条眉驚き]
[macro name="四条眉驚き"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_odoroki.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条眉困り]
[macro name="四条眉困り"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条眉強気]
[macro name="四条眉強気"]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_tuyoki.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条口通常]
[macro name="四条口通常"]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条口微笑み]
[macro name="四条口微笑み"]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条口笑顔]
[macro name="四条口笑顔"]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_warau_s.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条口笑顔大]
[macro name="四条口笑顔大"]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_warau.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条口開]
[macro name="四条口開"]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_ake.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条口驚き]
[macro name="四条口驚き"]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_odoroki.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条口ムッ]
[macro name="四条口ムッ"]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_mu.png" time=0]
[wait time=10]
[endmacro]


;立ち絵表示[四条目通常]
[macro name="四条目通常"]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条目大]
[macro name="四条目大"]
[chara_mod name="sijyou_me" storage="sijyou/me_ake.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条目にこ]
[macro name="四条目にこ"]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条目伏]
[macro name="四条目伏"]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi1.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条目閉じ]
[macro name="四条目閉じ"]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条横目]
[macro name="四条横目"]
[chara_mod name="sijyou_me" storage="sijyou/me_yoko.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条横伏目]
[macro name="四条横伏目"]
[chara_mod name="sijyou_me" storage="sijyou/me_yokofusi1.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条汗]
[macro name="四条汗"]
[chara_mod name="sijyou_emo" storage="sijyou/emo_ase.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条頬染め]
[macro name="四条頬染め"]
[chara_mod name="sijyou_emo" storage="sijyou/emo_hohosome.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条ビンタ]
[macro name="四条ビンタ"]
[chara_mod name="sijyou_emo" storage="sijyou/emo_binta.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[四条効果消]
[macro name="四条効果消"]
[chara_mod name="sijyou_emo" storage="toumei.gif" time=0]
[wait time=10]
[endmacro]



;立ち絵表示[四条目パチ1回]
[macro name="四条目パチ1回"]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=30]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=70]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[endmacro]

;立ち絵表示[四条伏目パチ1回]
[macro name="四条伏目パチ1回"]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=70]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi1.png" time=0]
[endmacro]

;立ち絵表示[四条閉伏目パチ1回]
[macro name="四条閉伏目パチ1回"]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=30]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi1.png" time=0]
[endmacro]

;立ち絵表示[四条目を開く]
[macro name="四条目を開く"]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=30]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[endmacro]

;立ち絵表示[四条退場]
[macro name="四条退場"]
[chara_mod name="sijyou_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="sijyou_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="sijyou_emo" storage="toumei.gif" time=0]
[wait time=10]
[endmacro]


[return]
