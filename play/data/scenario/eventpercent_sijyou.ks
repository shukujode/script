﻿;◆B4nFWraU42さん、各キャラクタークリアリストの作成をありがとうございました。
;「おまけ」「情報」から参照使用させていただきたく、◆B4nFWraU42さん作成のイベント達成率計算部分の切り出しをしました。
*start
;変数初期設定
[eval exp="tf.event_Number_of_times = 0"]
[if exp="sf.event_sijyou_event_6_1 == undefined"]
[eval exp="sf.event_sijyou_event_6_1 = 0"]
[endif]
[if exp="sf.event_sijyou_9_1 == undefined"]
[eval exp="sf.event_sijyou_9_1 = 0"]
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
[eval exp="sf.event_sijyou_2_2_bazar = 0"]
[endif]
;=============================================
[if exp="sf.ED_sijyou_normal == undefined"]
[eval exp="sf.ED_sijyou_normal = 0"]
[endif]
[if exp="sf.ED_sijyou_good == undefined"]
[eval exp="sf.ED_sijyou_good = 0"]
[endif]
[if exp="sf.ED_sijyou_bad == undefined"]
[eval exp="sf.ED_sijyou_bad = 0"]
[endif]
;sf.event_sijyou_event_6_1 sf.event_sijyou_9_1 sf.event_sijyou_9_2  sf.event_sijyou_9_3 sf.event_sijyou_9_4 
;sf.event_sijyou_10_1 sf.event_sijyou_10_3
;sf.event_sijyou_11_1 sf.event_sijyou_1_1 sf.event_sijyou_1_3 sf.event_sijyou_1_4 sf.event_sijyou_2_1 sf.event_sijyou_2_2_bazar
;sf.ED_sijyou_normal sf.ED_sijyou_good sf.ED_sijyou_bad
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
[if exp="sf.event_sijyou_sansaku_4 == undefined"]
[eval exp="sf.event_sijyou_sansaku_4 = 0"]
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
;==================================================================
;散策数
[eval exp="tf.eventSansaku_Number_of_times = 0"]
[eval exp="tf.eventSansaku_Number_of_times = sf.event_sijyou_sansaku + sf.event_sijyou_sansaku_2 + sf.event_sijyou_sansaku_3"]
[eval exp="tf.eventSansaku_Number_of_times = tf.eventSansaku_Number_of_times + sf.event_sijyou_sansaku_4 + sf.event_sijyou_sansaku_5"]
[eval exp="tf.eventSansaku_Number_of_times = tf.eventSansaku_Number_of_times + sf.event_sijyou_sansaku_6 + sf.event_sijyou_sansaku_7"]
[eval exp="tf.eventSansaku_Number_of_times = tf.eventSansaku_Number_of_times + sf.event_sijyou_sansaku_9 + sf.event_sijyou_sansaku_10"]
[eval exp="tf.eventSansaku_Number_of_times = tf.eventSansaku_Number_of_times + sf.event_sijyou_sansaku_11 + sf.event_sijyou_sansaku_12"]
[eval exp="tf.eventSansaku_Number_of_times = tf.eventSansaku_Number_of_times + sf.event_sijyou_sansaku_13"]
;散策数パーセント
[eval exp="tf.sansaku_pasent =  0"]
[eval exp="tf.eventSansaku_Number_of_times / 13 * 100"]
[eval exp="tf.sansaku_pasent = Math.floor(tf.sansaku_pasent)"]
;イベント数
[eval exp="tf.event_Number_of_times = 0"]
[eval exp="tf.event_Number_of_times = sf.event_sijyou_event_6_1 + sf.event_sijyou_9_1 + sf.event_sijyou_9_2 + sf.event_sijyou_9_3"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_sijyou_9_4 + sf.event_sijyou_10_1 + sf.event_sijyou_10_3"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_sijyou_11_1 + sf.event_sijyou_1_1 + sf.event_sijyou_1_3"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_sijyou_1_4 + sf.event_sijyou_2_1 + sf.event_sijyou_2_2_bazar"]
;エンディング数(ありがとうございます。エンディングを加算します)
[eval exp="tf.ending_Number_of_times = 0"]
[eval exp="tf.ending_Number_of_times = sf.ED_sijyou_normal + sf.ED_sijyou_good + sf.ED_sijyou_bad"]
;達成イベント数
[eval exp="tf.allEvent_Number_of_times = 0"]
[eval exp="tf.allEvent_Number_of_times = tf.eventSansaku_Number_of_times + tf.event_Number_of_times + tf.ending_Number_of_times"]
;達成率
[eval exp="tf.event_pasent =  0"]
[eval exp="tf.event_pasent = tf.allEvent_Number_of_times / (25 + 3) * 100"]
[eval exp="tf.event_pasent = Math.floor(tf.event_pasent)"]
[eval exp="f.sijyou_event_percent = 'イベント達成率' + tf.event_pasent + '％'"]
;↓クリアリスト表示用("イベント達成率"の文字抜きVer.)
[eval exp="f.sijyou_event_percent_s = tf.event_pasent + '％'"]
[return]
