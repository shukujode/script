*start
[cm]
[iscript]
$(".26_fore").empty();
$(".1_fore").empty();
[endscript]
;変数初期設定
[eval exp="tf.event_Number_of_times = 0"]
[if exp="sf.event_sijyou_event_6_1 == undefined"]
[eval exp="sf.event_sijyou_event_6_1 = 0"]
[endif]
[if exp="sf.event_sijyou_9_2 == undefined"]
[eval exp="sf.event_sijyou_9_2 = 0"]
[endif]
[if exp="sf.event_sijyou_9_3 == undefined"]
[eval exp="sf.event_sijyou_9_3 = 0"]
[endif]
[if exp="sf.event_sijyou_9_4 == undefined"]
[eval exp="sf.event_sijyou_9_4 = 0"]
[endif]
[if exp="sf.event_sijyou_10_1 == undefined"]
[eval exp="sf.event_sijyou_10_1 = 0"]
[endif]
[if exp="sf.event_sijyou_10_3 == undefined"]
[eval exp="sf.event_sijyou_10_3 = 0"]
[endif]
[if exp="sf.event_sijyou_11_1 == undefined"]
[eval exp="sf.event_sijyou_11_1 = 0"]
[endif]
[if exp="sf.event_sijyou_1_1 == undefined"]
[eval exp="sf.event_sijyou_1_1 = 0"]
[endif]
[if exp="sf.event_sijyou_1_3 == undefined"]
[eval exp="sf.event_sijyou_1_3 = 0"]
[endif]
[if exp="sf.event_sijyou_1_4 == undefined"]
[eval exp="sf.event_sijyou_1_4 = 0"]
[endif]
[if exp="sf.event_sijyou_2_1 == undefined"]
[eval exp="sf.event_sijyou_2_1 = 0"]
[endif]
[if exp="sf.event_sijyou_2_2_bazar == undefined"]
[eval exp="sf.event_sijyou_2_2_bazar"]
[endif]
;sf.event_sijyou_event_6_1 sf.event_sijyou_9_2  sf.event_sijyou_9_3 sf.event_sijyou_9_4 sf.event_sijyou_9_4 sf.event_sijyou_10_1 sf.event_sijyou_10_3
;sf.event_sijyou_10_3 sf.event_sijyou_11_1 sf.event_sijyou_1_1 sf.event_sijyou_1_3 sf.event_sijyou_1_4 sf.event_sijyou_2_1 sf.event_sijyou_2_2_bazar
[eval exp="tf.event_Number_of_times = sf.event_sijyou_event_6_1 + sf.event_sijyou_9_2 + sf.event_sijyou_9_3 + sf.event_sijyou_9_4 + sf.event_sijyou_10_1 + sf.event_sijyou_10_3 + sf.event_sijyou_11_1 + sf.event_sijyou_1_1 + sf.event_sijyou_1_3 + sf.event_sijyou_1_4 + sf.event_sijyou_2_1 + sf.event_sijyou_2_2_bazar"]
;=============================================
;変数初期設定
[eval exp="tf.eventSnsaku_Number_of_times = 0"]
[if exp="sf.event_sijyou_1_1 == undefined"]
[eval exp="sf.event_sijyou_1_1 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku == undefined"]
[eval exp="sf.event_sijyou_sansaku = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_2 == undefined"]
[eval exp="sf.event_sijyou_sansaku_2 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_3 == undefined"]
[eval exp="sf.event_sijyou_sansaku_3 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku4 == undefined"]
[eval exp="sf.event_sijyou_sansaku4 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_5 == undefined"]
[eval exp="sf.event_sijyou_sansaku_5 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_6 == undefined"]
[eval exp="sf.event_sijyou_sansaku_6 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_7 == undefined"]
[eval exp="sf.event_sijyou_sansaku_7 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_9 == undefined"]
[eval exp="sf.event_sijyou_sansaku_9 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_10 == undefined"]
[eval exp="sf.event_sijyou_sansaku_10 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_11 == undefined"]
[eval exp="sf.event_sijyou_sansaku_11 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_12 == undefined"]
[eval exp="sf.event_sijyou_sansaku_12 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_13 == undefined"]
[eval exp="sf.event_sijyou_sansaku_13 = 0"]
[endif]
[eval exp="tf.eventSnsaku_Number_of_times = "sf.event_sijyou_sansaku + sf.event_sijyou_sansaku_10 + sf.event_sijyou_sansaku_11 + sf.event_sijyou_sansaku_12 + tf.eventSnsaku_Number_of_times + sf.event_sijyou_sansaku_13 + sf.event_sijyou_sansaku_2 + sf.event_sijyou_sansaku_3 + sf.event_sijyou_sansaku4 + sf.event_sijyou_sansaku_5 + sf.event_sijyou_sansaku_6 + sf.event_sijyou_sansaku_7 + sf.event_sijyou_sansaku_9"]
[eval exp="tf.ending_Number_of_times = 0"]
[eval exp="tf.ending_Number_of_times = sf.ED_kuroda_normal + sf.ED_kuroda_good + sf.ED_kuroda_bad"]
[eval exp="tf.ending_Number_of_times = tf.ending_Number_of_times + sf.ED_sijyou_normal + sf.ED_sijyou_good + sf.ED_sijyou_bad"]
[eval exp="tf.ending_Number_of_times = tf.ending_Number_of_times + sf.ED_zaizen_normal + sf.ED_zaizen_good + sf.ED_zaizen_bad2 + sf.ED_zaizen_bad1"]
[eval exp="tf.ending_Number_of_times = tf.ending_Number_of_times + sf.ED_katuraginomiya_normal + sf.ED_katuraginomiya_good + sf.ED_katuraginomiya_bad"]
[eval exp="tf.ending_Number_of_times = tf.ending_Number_of_times + sf.ED_hujieda_normal + sf.ED_hujieda_good + sf.ED_hujieda_bad + sf.ED_hujieda_bad2"]
*set_position
[eval exp="tf.y_plus_position =50"]
[eval exp="tf.x1 = 150"]
[eval exp="tf.x2 = 400"]
[eval exp="tf.y1 = 100"]
[eval exp="tf.y2 = tf.y1 + tf.y_plus_position"]
[eval exp="tf.y3 = tf.y2 + tf.y_plus_position"]
[eval exp="tf.y4 = tf.y3 + tf.y_plus_position"]
[eval exp="tf.y5 = tf.y4 + tf.y_plus_position"]
[eval exp="tf.y6 = tf.y5 + tf.y_plus_position"]
[eval exp="tf.y7 = tf.y6 + tf.y_plus_position"]
[eval exp="tf.y8 = tf.y7 + tf.y_plus_position"]
[eval exp="tf.y9 = tf.y8 + tf.y_plus_position"]
[eval exp="tf.y10 = tf.y9 + tf.y_plus_position"]
[eval exp="tf.y11 = tf.y10 + tf.y_plus_position"]

*check_event
[chara_mod name="bg" storage="bg/bg_fumibako.jpg"]
[bg storage="../fgimage/bg/bg_fumibako.jpg" time=0]
;四条9_1
[image storage="../image/day9_1.png" layer=26 x=&tf.x1 y=&tf.y1 visible=true]
;四条9_2
[image storage="../image/day9_2.png" layer=26 x=&tf.x1 y=&tf.y2 visible=true]
;四条9_3
[image storage="../image/day9_3.png" layer=26 x=&tf.x1 y=&tf.y3 visible=true]
;四条9_4
[image storage="../image/day9_4.png" layer=26 x=&tf.x1 y=&tf.y4 visible=true]
;四条10_1
[image storage="../image/day10_1.png" layer=26 x=&tf.x1 y=&tf.y5 visible=true]
;四条10_3" 
[image storage="../image/day10_3.png" layer=26 x=&tf.x1 y=&tf.y6 visible=true]
;四条11_1" 
[image storage="../image/day11_1.png" layer=26 x=&tf.x1 y=&tf.y7 visible=true]
;四条1_1" 
[image storage="../image/day1_1.png" layer=26 x=&tf.x2 y=&tf.y8 visible=true]
;四条1_3" 
[image storage="../image/day1_3.png" layer=26 x=&tf.x2 y=&tf.y9 visible=true]
;四条1_4" 
[image storage="../image/day1_4.png" layer=26 x=&tf.x2 y=&tf.y10 visible=true]
;四条2_1" 
[image storage="../image/day2_1.png" layer=26 x=&tf.x2 y=&tf.y11 visible=true]
;四条2_2" 
[image storage="../image/day2_2.png" layer=26 x=&tf.x2 y=&tf.y1 visible=true]

*common
[glink storage="test_sijyou.ks" target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=500 color=white]
[glink storage="test_sijyou.ks" target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=550 color=white]
[s]
