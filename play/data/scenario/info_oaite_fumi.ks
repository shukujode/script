﻿*start

*fumibako
[freeimage layer = 26]
[freeimage layer = 27]

[clearfix]
[cm]
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[layopt layer=28 visible=true]
[freeimage layer = 26]
[eval exp="f.fumi_henjityu=0;"]
[eval exp="f.kinou = 'fumibako'"]


;◆手紙一覧
*fumi_all_page1
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 1"]
[eval exp="f.viewing_target = '*fumi_all_page1'"]
[call target=*fumibako_oaite_hyouji]

;[eval exp="f.fumi_all_number=5"]
[if exp="f.fumi_all_number>10"]
			[glink target=*fumi_all_page2 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_all_number"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_left
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * f.fumi_all_number ) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * f.fumi_all_number ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=35 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;[emb exp ="f.fumi_list_all_hensin[f.list_count]"][r]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=410 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=410 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=70 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_left
[endif]

*fumi_all_page1_rignt
[if exp="f.fumi_all_number < 6"]
	@jump target=*fumi_all_page1_end
[else]
	[eval exp="f.list_count = f.fumi_all_number - 5"]
	[eval exp="f.loop_count = f.list_count"]
	[if exp="f.loop_count > 5"]
		[eval exp="f.loop_count = 5"]
	[endif]
;f.list_count=[emb exp ="f.list_count"][r]
	*loop_fumi_all_rignt
	[if exp="f.list_count == 0"]
	[else]
		[eval exp="f.list_count = f.list_count - 1"]
	[endif]
	[if exp="f.loop_count == 0"]
	[else]
		[eval exp="f.loop_count = f.loop_count - 1"]
	[endif]
	[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 5 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 5 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
	[endscript]
	[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
		[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
	[endif]
	;[emb exp ="f.fumi_list_all_hensin[f.list_count]"][r]
	[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
		[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
		[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=880 y=&f.fumi_all_y color=white]
	[else]
		[ptext text="返信済" layer=28 size=15 x=880 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
	[endif]
;	f.fumi_all_number=[emb exp ="f.fumi_all_number"][r]
	[if exp="f.fumi_all_number==0"]
	[else]
		[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=545 y=&f.fumi_all_y color=white]
	;8f.fumi_all_y=[emb exp ="f.fumi_all_y"][r]
	[endif]

	[if exp="f.loop_count>0"]
		@jump target=*loop_fumi_all_rignt
	[endif]
[endif]
*fumi_all_page1_end
[s]

*fumi_all_page2
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 2"]
[eval exp="f.viewing_target = '*fumi_all_page2'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 10"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink target=*fumi_all_page1 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number>20"]
[glink target=*fumi_all_page3 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 10 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 10 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=35 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=410 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=410 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=70 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_left2
[endif]

*fumi_all_page2_rignt
[if exp="f.fumi_all_number<16"]
	@jump target=*fumi_all_page2_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 15"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_rignt2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 15 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 15 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=880 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=880 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=545 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_rignt2
[endif]
[endif]
*fumi_all_page2_end
[s]


*fumi_all_page3
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 3"]
[eval exp="f.viewing_target = '*fumi_all_page3'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 20"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink target=*fumi_all_page2 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 30"]
[glink target=*fumi_all_page4 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left3
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 20 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 20 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=35 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=410 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=410 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=70 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_left3
[endif]

*fumi_all_page3_rignt
[if exp="f.fumi_all_number<26"]
	@jump target=*fumi_all_page3_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 25"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_rignt3
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 25 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 25 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=880 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=880 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=545 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_rignt3
[endif]
[endif]
*fumi_all_page3_end
[s]

*fumi_all_page4
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 4"]
[eval exp="f.viewing_target = '*fumi_all_page4'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 30"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink target=*fumi_all_page3 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 40"]
[glink target=*fumi_all_page5 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left4
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 30 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 30 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=35 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=410 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=410 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=70 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_left4
[endif]

*fumi_all_page4_rignt
[if exp="f.fumi_all_number<36"]
	@jump target=*fumi_all_page4_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 35"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right4
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 35 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 35 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=880 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=880 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=545 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right4
[endif]
[endif]
*fumi_all_page4_end
[s]

*fumi_all_page5
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 5"]
[eval exp="f.viewing_target = '*fumi_all_page5'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 40"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink target=*fumi_all_page4 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 50"]
[glink target=*fumi_all_page6 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left5
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 40 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 40 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=35 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=410 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=410 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=70 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_left5
[endif]

*fumi_all_page5_rignt
[if exp="f.fumi_all_number<46"]
	@jump target=*fumi_all_page5_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 45"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right5
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 45 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 45 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=880 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=880 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=545 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right5
[endif]
[endif]
*fumi_all_page5_end
[s]

*fumi_all_page6
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 6"]
[eval exp="f.viewing_target = '*fumi_all_page6'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 50"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink target=*fumi_all_page5 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 60"]
[glink target=*fumi_all_page7 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left6
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 50 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 50 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=35 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=410 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=410 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=70 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_left6
[endif]

*fumi_all_page6_rignt
[if exp="f.fumi_all_number<56"]
	@jump target=*fumi_all_page6_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 55"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right6
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 55 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 55 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=880 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=880 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=545 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right6
[endif]
[endif]
*fumi_all_page6_end
[s]

*fumi_all_page7
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 7"]
[eval exp="f.viewing_target = '*fumi_all_page7'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 60"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink target=*fumi_all_page6 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 70"]
[glink target=*fumi_all_page8 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left7
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 60 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 60 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=35 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=410 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=410 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=70 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_left7
[endif]

*fumi_all_page7_rignt
[if exp="f.fumi_all_number<66"]
	@jump target=*fumi_all_page7_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 65"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right7
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 65 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 65 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=880 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=880 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=545 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right7
[endif]
[endif]
*fumi_all_page7_end
[s]

*fumi_all_page8
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 8"]
[eval exp="f.viewing_target = '*fumi_all_page8'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 70"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink target=*fumi_all_page7 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 80"]
[glink target=*fumi_all_page9 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left8
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 70 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 70 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=35 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=410 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=410 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=70 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_left8
[endif]

*fumi_all_page8_rignt
[if exp="f.fumi_all_number<76"]
	@jump target=*fumi_all_page8_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 75"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right8
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 75 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 75 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=880 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=880 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=545 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right8
[endif]
[endif]
*fumi_all_page8_end
[s]

*fumi_all_page9
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 9"]
[eval exp="f.viewing_target = '*fumi_all_page9'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 80"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink target=*fumi_all_page8 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 90"]
[glink target=*fumi_all_page10 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left9
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 80 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 80 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=35 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=410 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=410 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=70 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_left9
[endif]

*fumi_all_page9_rignt
[if exp="f.fumi_all_number<86"]
	@jump target=*fumi_all_page9_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 85"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right9
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 85 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 85 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=880 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=880 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=545 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right9
[endif]
[endif]
*fumi_all_page9_end
[s]

*fumi_all_page10
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 10"]
[eval exp="f.viewing_target = '*fumi_all_page10'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 90"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink target=*fumi_all_page9 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 100"]
[glink target=*fumi_all_page11 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left10
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 90 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 90 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=35 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=410 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=410 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=70 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_left10
[endif]

*fumi_all_page10_rignt
[if exp="f.fumi_all_number<96"]
	@jump target=*fumi_all_page10_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 95"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right10
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 95 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 95 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=880 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=880 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=545 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right10
[endif]
[endif]
*fumi_all_page10_end
[s]

*fumi_all_page11
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 11"]
[eval exp="f.viewing_target = '*fumi_all_page11'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 100"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink target=*fumi_all_page10 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 110"]
[glink target=*fumi_all_page12 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left11
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 100 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 100 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=35 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=410 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=410 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=70 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_left11
[endif]

*fumi_all_page11_rignt
[if exp="f.fumi_all_number<106"]
	@jump target=*fumi_all_page11_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 105"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right11
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 105 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 105 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=880 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=880 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=545 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right11
[endif]
[endif]
*fumi_all_page11_end
[s]

*fumi_all_page12
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 12"]
[eval exp="f.viewing_target = '*fumi_all_page12'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 110"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink target=*fumi_all_page11 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 120"]
[glink target=*fumi_all_page13 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left12
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 110 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 110 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=35 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=410 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=410 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=70 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_left12
[endif]

*fumi_all_page12_rignt
[if exp="f.fumi_all_number<116"]
	@jump target=*fumi_all_page12_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 115"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right12
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 115 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 115 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=880 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=880 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=545 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right12
[endif]
[endif]
*fumi_all_page12_end
[s]

*fumi_all_page13
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 13"]
[eval exp="f.viewing_target = '*fumi_all_page13'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 120"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink target=*fumi_all_page12 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 130"]
[glink target=*fumi_all_page14 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left13
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 120 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 120 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=35 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=410 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=410 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=70 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_left13
[endif]

*fumi_all_page13_rignt
[if exp="f.fumi_all_number<126"]
	@jump target=*fumi_all_page13_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 125"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right13
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 125 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 125 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=880 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=880 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=545 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right13
[endif]
[endif]
*fumi_all_page13_end
[s]

*fumi_all_page14
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 14"]
[eval exp="f.viewing_target = '*fumi_all_page14'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 130"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink target=*fumi_all_page13 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 140"]
[glink target=*fumi_all_page15 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left14
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 130 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 130 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=35 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=410 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=410 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=70 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_left14
[endif]

*fumi_all_page14_rignt
[if exp="f.fumi_all_number<136"]
	@jump target=*fumi_all_page14_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 135"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right14
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 135 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 135 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=880 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=880 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=545 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right14
[endif]
[endif]
*fumi_all_page14_end
[s]

*fumi_all_page15
[cm]
[freeimage layer = 28]
[eval exp="f.fumibako_now_page = 15"]
[eval exp="f.viewing_target = '*fumi_all_page15'"]
[call target=*fumibako_oaite_hyouji]
[eval exp="f.list_count = f.fumi_all_number - 140"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]

[glink target=*fumi_all_page14 text="←" size=20 width="20" x=20 y=480 color=white]
[if exp="f.fumi_all_number > 140"]
;[glink target=*fumi_all_page16 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
*loop_fumi_all_left15
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y = ( 20 + 80 * ( f.fumi_all_number - 140 )) - 80 * f.list_count;
	f.fumi_all_y = ( 10 + 80 * ( f.fumi_all_number - 140 )) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=35 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=410 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=410 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=70 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_left15
[endif]

*fumi_all_page15_rignt
[if exp="f.fumi_all_number<146"]
	@jump target=*fumi_all_page15_end
[else]
[eval exp="f.list_count = f.fumi_all_number - 145"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_all_right15
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_all_midoku_y =  20 + 80 * ( f.fumi_all_number - 145 ) - 80 * f.list_count;
	f.fumi_all_y =  10 + 80 * ( f.fumi_all_number - 145 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = f.fumi_list_all_location_taishou[f.list_count];
	f.fumi_hairetsu2 = f.fumi_list_all_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=880 y=&f.fumi_all_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=880 y=&f.fumi_all_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_all_number==0"]
[else]
	[glink storage=&f.fumi_list_all_storage[f.list_count] target=&f.fumi_list_all_target[f.list_count] text=&f.fumi_list_all_title[f.list_count] size=16 width="300" x=545 y=&f.fumi_all_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_all_right15
[endif]
[endif]
*fumi_all_page15_end
[s]


*fumibako_oaite_hyouji
[image layer=26 x=1 y=1 storage="bg/bg_fumibako.jpg"]

[iscript]
f.fumibako_max_page = Math.ceil(f.fumi_all_number / 10);
f.fumibako_page_hyouji = f.fumibako_now_page + " ／ " + f.fumibako_max_page + " 頁";
[endscript]
	[ptext text=&f.fumibako_page_hyouji layer=28 size=20 x=800 y=40 color=palegoldenrod bold=bold]


[if exp="sf.kouryaku_ninzuu<2"]
	[glink storage="fumi_henji.ks" target=&sf.fumibako_list[0] text=&sf.kouryaku_list_fullname[0] size=16 width="120" x=20 y=585 color=white]
[elsif exp="sf.kouryaku_ninzuu>=2"]
	[glink storage="fumi_henji.ks" target=&sf.fumibako_list[0] text=&sf.kouryaku_list_fullname[0] size=16 width="120" x=20 y=585 color=white]
	[glink storage="fumi_henji.ks" target=&sf.fumibako_list[1] text=&sf.kouryaku_list_fullname[1] size=16 width="120" x=190 y=585 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<3"]
[elsif exp="sf.kouryaku_ninzuu>=3"]
	[glink storage="fumi_henji.ks" target=&sf.fumibako_list[2] text=&sf.kouryaku_list_fullname[2] size=16 width="120" x=360 y=585 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<4"]
[elsif exp="sf.kouryaku_ninzuu>=4"]
	[glink storage="fumi_henji.ks" target=&sf.fumibako_list[3] text=&sf.kouryaku_list_fullname[3] size=16 width="120" x=530 y=585 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<5"]
[elsif exp="sf.kouryaku_ninzuu>=5"]
	[glink storage="fumi_henji.ks" target=&sf.fumibako_list[4] text=&sf.kouryaku_list_fullname[4] size=16 width="120" x=700 y=585 color=white]
[endif]
	[glink target="fumibako_owari" text="終了" color=gray size=16 width="40" x=880 y=585 color=white]
[return]
[s]


*fumibako_owari
;[freeimage layer = 23]
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[cm]

@jump storage=okeiko.ks target=*draw_button_system
[s]
[return]


*info_oaite
[freeimage layer = 26]
[freeimage layer = 27]
[clearfix]
[cm]
;[freeimage layer = 23]
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[layopt layer=28 visible=true]
[freeimage layer = 26]

[if exp="f.oaite_viewing_target != ''"]
@jump target=&f.oaite_viewing_target
[endif]

*info_kuroda
[freeimage layer = 27]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*info_kuroda'"]
[eval exp="f.oaite_viewing_target = '*info_kuroda'"]
[call target=*info_kuroda_hyouji]

;◆手紙一覧
;[eval exp="f.fumi_kuroda_number=13"]
[if exp="f.fumi_kuroda_number>5"]
			[glink target=*fumi_kuroda_page2 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_kuroda_number"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_kuroda
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_kuroda_midoku_y = ( 20 + 80 * f.fumi_kuroda_number ) - 80 * f.list_count;
	f.fumi_kuroda_y = ( 10 + 80 * f.fumi_kuroda_number ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 0;
	f.fumi_hairetsu2 = f.fumi_list_kuroda_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_kuroda_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;f.midoku_list_hairetsu=[emb exp ="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]"][r]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target exp="f.fumi_atesaki='kuroda'; f.fumi_henjityu=1;" text="返信" size=16 width="32" x=850 y=&f.fumi_kuroda_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=850 y=&f.fumi_kuroda_midoku_y color=mediumslateblue bold=bold]
[endif]

[if exp="f.fumi_kuroda_number==0"]
[else]
	[glink storage=fumi_kuroda.ks target=&f.fumi_list_kuroda_target[f.list_count] text=&f.fumi_list_kuroda_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_kuroda_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_kuroda
[endif]
[s]

*fumi_kuroda_page2
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_kuroda_page2'"]
[eval exp="f.oaite_viewing_target = '*fumi_kuroda_page2'"]
[call target=*info_kuroda_hyouji]

;1f.fumi_kuroda_number=[emb exp ="f.fumi_kuroda_number"][r]
[glink target=*info_kuroda text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_kuroda_number>10"]
[glink target=*fumi_kuroda_page3 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_kuroda_number - 5"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_kuroda2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_kuroda_number=[emb exp ="f.fumi_kuroda_number"][r]
[iscript]
	f.fumi_kuroda_midoku_y =  20 + 80 * ( f.fumi_kuroda_number - 5 ) - 80 * f.list_count;
	f.fumi_kuroda_y =  10 + 80 * ( f.fumi_kuroda_number - 5 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 0;
	f.fumi_hairetsu2 = f.fumi_list_kuroda_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_kuroda_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;f.midoku_list_hairetsu=[emb exp ="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]"][r]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target exp="f.fumi_atesaki='kuroda'; f.fumi_henjityu=1;" text="返信" size=16 width="32" x=850 y=&f.fumi_kuroda_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=850 y=&f.fumi_kuroda_midoku_y color=mediumslateblue bold=bold]
[endif]
;7f.fumi_kuroda_number=[emb exp ="f.fumi_kuroda_number"][r]
[if exp="f.fumi_kuroda_number==0"]
[else]
	[glink storage=fumi_kuroda.ks target=&f.fumi_list_kuroda_target[f.list_count] text=&f.fumi_list_kuroda_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_kuroda_y color=white]
;8f.fumi_kuroda_y=[emb exp ="f.fumi_kuroda_y"][r]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_kuroda2
[endif]
[s]

*fumi_kuroda_page3
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_kuroda_page3'"]
[eval exp="f.oaite_viewing_target = '*fumi_kuroda_page3'"]
[call target=*info_kuroda_hyouji]

;1f.fumi_kuroda_number=[emb exp ="f.fumi_kuroda_number"][r]
[glink target=*fumi_kuroda_page2 text="←" size=20 width="20" x=510 y=480 color=white]

[eval exp="f.list_count = f.fumi_kuroda_number - 10"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_kuroda3
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_kuroda_number=[emb exp ="f.fumi_kuroda_number"][r]
[iscript]
	f.fumi_kuroda_midoku_y =  20 + 80 * ( f.fumi_kuroda_number - 10 ) - 80 * f.list_count;
	f.fumi_kuroda_y =  10 + 80 * ( f.fumi_kuroda_number - 10 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 0;
	f.fumi_hairetsu2 = f.fumi_list_kuroda_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_kuroda_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;f.midoku_list_hairetsu=[emb exp ="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]"][r]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target exp="f.fumi_atesaki='kuroda'; f.fumi_henjityu=1;" text="返信" size=16 width="32" x=850 y=&f.fumi_kuroda_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=850 y=&f.fumi_kuroda_midoku_y color=mediumslateblue bold=bold]
[endif]
;7f.fumi_kuroda_number=[emb exp ="f.fumi_kuroda_number"][r]
[if exp="f.fumi_kuroda_number==0"]
[else]
	[glink storage=fumi_kuroda.ks target=&f.fumi_list_kuroda_target[f.list_count] text=&f.fumi_list_kuroda_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_kuroda_y color=white]
;8f.fumi_kuroda_y=[emb exp ="f.fumi_kuroda_y"][r]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_kuroda3
[endif]
[s]

*info_kuroda_hyouji
[image layer=26 x=1 y=1 storage="bg/bg_info_kuroda.jpg"]
[if exp="sf.kouryaku_ninzuu<2"]
[elsif exp="sf.kouryaku_ninzuu>=2"]
	[glink target=&sf.info_list1[1] text=&sf.kouryaku_list_fullname[1] size=16 width="120" x=30 y=580 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<3"]
[elsif exp="sf.kouryaku_ninzuu>=3"]
	[glink target=&sf.info_list1[2] text=&sf.kouryaku_list_fullname[2] size=16 width="120" x=230 y=580 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<4"]
[elsif exp="sf.kouryaku_ninzuu>=4"]
	[glink target=&sf.info_list1[3] text=&sf.kouryaku_list_fullname[3] size=16 width="120" x=430 y=580 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<5"]
[elsif exp="sf.kouryaku_ninzuu>=5"]
	[glink target=&sf.info_list1[4] text=&sf.kouryaku_list_fullname[4] size=16 width="120" x=630 y=580 color=white]
[endif]
	[glink target="info_owari" text="終了"  size=16 width="40" x=850 y=580 color=white]
[if exp="f.para_kuroda_koukando<0"]
[eval exp="f.para_koukando_x = 270"]
[elsif exp="f.para_kuroda_koukando<10"]
[eval exp="f.para_koukando_x = 281"]
[elsif exp="f.para_kuroda_koukando<100"]
[eval exp="f.para_koukando_x = 270"]
[else]
[eval exp="f.para_koukando_x = 255"]
[endif]
[if exp="f.para_kuroda_koukando<0"]
[eval exp="f.para_color = 'crimson'"]
[else]
[eval exp="f.para_color = 'black'"]
[endif]
[ptext text=&f.para_kuroda_koukando layer=27 size=25 x=&f.para_koukando_x y=323 color=&f.para_color bold=bold]
[ptext text=&f.para_kuroda_sintyou layer=27 size=25 x=255 y=364 color=black bold=bold]
[ptext text=&f.para_kuroda_taijuu layer=27 size=25 x=270 y=406 color=black bold=bold]
[ptext text=&f.para_kuroda_shumi layer=27 size=25 x=270 y=448 color=black bold=bold]
[return]
[s]


*info_zaizen
[freeimage layer = 27]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*info_zaizen'"]
[eval exp="f.oaite_viewing_target = '*info_zaizen'"]
[call target=*info_zaizen_hyouji]

;◆手紙一覧
;[eval exp="f.fumi_zaizen_number=13"]
[if exp="f.fumi_zaizen_number>5"]
			[glink target=*fumi_zaizen_page2 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_zaizen_number"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_zaizen
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_zaizen_midoku_y = ( 20 + 80 * f.fumi_zaizen_number ) - 80 * f.list_count;
	f.fumi_zaizen_y = ( 10 + 80 * f.fumi_zaizen_number ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 1;
	f.fumi_hairetsu2 = f.fumi_list_zaizen_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_zaizen_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;f.midoku_list_hairetsu=[emb exp ="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]"][r]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target exp="f.fumi_atesaki='zaizen'; f.fumi_henjityu=1;" text="返信" size=16 width="32" x=850 y=&f.fumi_zaizen_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=850 y=&f.fumi_zaizen_midoku_y color=mediumslateblue bold=bold]
[endif]
[if exp="f.fumi_zaizen_number==0"]
[else]
	[glink storage=fumi_zaizen.ks target=&f.fumi_list_zaizen_target[f.list_count] text=&f.fumi_list_zaizen_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_zaizen_y color=white]
;[emb exp ="f.fumi_zaizen_y"][r]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_zaizen
[endif]
[s]

*fumi_zaizen_page2
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_zaizen_page2'"]
[eval exp="f.oaite_viewing_target = '*fumi_zaizen_page2'"]
[call target=*info_zaizen_hyouji]

;1f.fumi_zaizen_number=[emb exp ="f.fumi_zaizen_number"][r]
[glink target=*info_zaizen text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_zaizen_number>10"]
[glink target=*fumi_zaizen_page3 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_zaizen_number - 5"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_zaizen2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_zaizen_number=[emb exp ="f.fumi_zaizen_number"][r]
[iscript]
	f.fumi_zaizen_midoku_y =  20 + 80 * ( f.fumi_zaizen_number - 5 ) - 80 * f.list_count;
	f.fumi_zaizen_y =  10 + 80 * ( f.fumi_zaizen_number - 5 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 1;
	f.fumi_hairetsu2 = f.fumi_list_zaizen_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_zaizen_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;f.midoku_list_hairetsu=[emb exp ="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]"][r]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target exp="f.fumi_atesaki='zaizen'; f.fumi_henjityu=1;" text="返信" size=16 width="32" x=850 y=&f.fumi_zaizen_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=850 y=&f.fumi_zaizen_midoku_y color=mediumslateblue bold=bold]
[endif]
;7f.fumi_zaizen_number=[emb exp ="f.fumi_zaizen_number"][r]
[if exp="f.fumi_zaizen_number==0"]
[else]
	[glink storage=fumi_zaizen.ks target=&f.fumi_list_zaizen_target[f.list_count] text=&f.fumi_list_zaizen_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_zaizen_y color=white]
;8f.fumi_zaizen_y=[emb exp ="f.fumi_zaizen_y"][r]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_zaizen2
[endif]
[s]

*fumi_zaizen_page3
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_zaizen_page3'"]
[eval exp="f.oaite_viewing_target = '*fumi_zaizen_page3'"]
[call target=*info_zaizen_hyouji]

;1f.fumi_zaizen_number=[emb exp ="f.fumi_zaizen_number"][r]
[glink target=*fumi_zaizen_page2 text="←" size=20 width="20" x=510 y=480 color=white]

[eval exp="f.list_count = f.fumi_zaizen_number - 10"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_zaizen3
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_zaizen_number=[emb exp ="f.fumi_zaizen_number"][r]
[iscript]
	f.fumi_zaizen_midoku_y =  20 + 80 * ( f.fumi_zaizen_number - 10 ) - 80 * f.list_count;
	f.fumi_zaizen_y =  10 + 80 * ( f.fumi_zaizen_number - 10 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 1;
	f.fumi_hairetsu2 = f.fumi_list_zaizen_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_zaizen_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;f.midoku_list_hairetsu=[emb exp ="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]"][r]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target exp="f.fumi_atesaki='zaizen'; f.fumi_henjityu=1;" text="返信" size=16 width="32" x=850 y=&f.fumi_zaizen_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=850 y=&f.fumi_zaizen_midoku_y color=mediumslateblue bold=bold]
[endif]
;7f.fumi_zaizen_number=[emb exp ="f.fumi_zaizen_number"][r]
[if exp="f.fumi_zaizen_number==0"]
[else]
	[glink storage=fumi_zaizen.ks target=&f.fumi_list_zaizen_target[f.list_count] text=&f.fumi_list_zaizen_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_zaizen_y color=white]
;8f.fumi_zaizen_y=[emb exp ="f.fumi_zaizen_y"][r]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_zaizen3
[endif]
[s]

*info_zaizen_hyouji
[image layer=26 x=1 y=1 storage="bg/bg_info_zaizen.jpg"]
[glink target=&sf.info_list1[0] text=&sf.kouryaku_list_fullname[0] size=16 width="120" x=30 y=580 color=white]
;[if exp="sf.kouryaku_ninzuu<2"]
;[elsif exp="sf.kouryaku_ninzuu>=2"]
;	[glink target=&sf.info_list1[1] text=&sf.kouryaku_list_fullname[1] size=16 width="120" x=30 y=580 color=white]
;[endif]
[if exp="sf.kouryaku_ninzuu<3"]
[elsif exp="sf.kouryaku_ninzuu>=3"]
	[glink target=&sf.info_list1[2] text=&sf.kouryaku_list_fullname[2] size=16 width="120" x=230 y=580 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<4"]
[elsif exp="sf.kouryaku_ninzuu>=4"]
	[glink target=&sf.info_list1[3] text=&sf.kouryaku_list_fullname[3] size=16 width="120" x=430 y=580 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<5"]
[elsif exp="sf.kouryaku_ninzuu>=5"]
	[glink target=&sf.info_list1[4] text=&sf.kouryaku_list_fullname[4] size=16 width="120" x=630 y=580 color=white]
[endif]
	[glink target="info_owari" text="終了"  size=16 width="40" x=850 y=580 color=white]
[if exp="f.para_zaizen_koukando<0"]
[eval exp="f.para_koukando_x = 270"]
[elsif exp="f.para_zaizen_koukando<10"]
[eval exp="f.para_koukando_x = 281"]
[elsif exp="f.para_zaizen_koukando<100"]
[eval exp="f.para_koukando_x = 270"]
[else]
[eval exp="f.para_koukando_x = 255"]
[endif]
[if exp="f.para_zaizen_koukando<0"]
[eval exp="f.para_color = 'crimson'"]
[else]
[eval exp="f.para_color = 'black'"]
[endif]
[ptext text=&f.para_zaizen_koukando layer=27 size=25 x=&f.para_koukando_x y=323 color=&f.para_color bold=bold]
[ptext text=&f.para_zaizen_sintyou layer=27 size=25 x=255 y=364 color=black bold=bold]
[ptext text=&f.para_zaizen_taijuu layer=27 size=25 x=270 y=406 color=black bold=bold]
[ptext text=&f.para_zaizen_shumi layer=27 size=25 x=270 y=448 color=black bold=bold]
[return]
[s]

*info_sijyou
[freeimage layer = 27]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*info_sijyou'"]
[eval exp="f.oaite_viewing_target = '*info_sijyou'"]
[call target=*info_sijyou_hyouji]

;◆手紙一覧
;[eval exp="f.fumi_sijyou_number=13"]
[if exp="f.fumi_sijyou_number>5"]
			[glink target=*fumi_sijyou_page2 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_sijyou_number"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_sijyou
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_sijyou_midoku_y = ( 20 + 80 * f.fumi_sijyou_number ) - 80 * f.list_count;
	f.fumi_sijyou_y = ( 10 + 80 * f.fumi_sijyou_number ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_sijyou_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;f.midoku_list_hairetsu=[emb exp ="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]"][r]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target exp="f.fumi_atesaki='sijyou'; f.fumi_henjityu=1;" text="返信" size=16 width="32" x=850 y=&f.fumi_sijyou_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=850 y=&f.fumi_sijyou_midoku_y color=mediumslateblue bold=bold]
[endif]
[if exp="f.fumi_sijyou_number==0"]
[else]
	[glink storage=fumi_sijyou.ks target=&f.fumi_list_sijyou_target[f.list_count] text=&f.fumi_list_sijyou_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_sijyou_y color=white]
;[emb exp ="f.fumi_sijyou_y"][r]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_sijyou
[endif]
[s]

*fumi_sijyou_page2
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page2'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page2'"]
[call target=*info_sijyou_hyouji]

;1f.fumi_sijyou_number=[emb exp ="f.fumi_sijyou_number"][r]
[glink target=*info_sijyou text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_sijyou_number>10"]
[glink target=*fumi_sijyou_page3 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_sijyou_number - 5"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_sijyou2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_sijyou_number=[emb exp ="f.fumi_sijyou_number"][r]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 5 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 5 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_sijyou_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;f.midoku_list_hairetsu=[emb exp ="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]"][r]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target exp="f.fumi_atesaki='sijyou'; f.fumi_henjityu=1;" text="返信" size=16 width="32" x=850 y=&f.fumi_sijyou_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=850 y=&f.fumi_sijyou_midoku_y color=mediumslateblue bold=bold]
[endif]
;7f.fumi_sijyou_number=[emb exp ="f.fumi_sijyou_number"][r]
[if exp="f.fumi_sijyou_number==0"]
[else]
	[glink storage=fumi_sijyou.ks target=&f.fumi_list_sijyou_target[f.list_count] text=&f.fumi_list_sijyou_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_sijyou_y color=white]
;8f.fumi_sijyou_y=[emb exp ="f.fumi_sijyou_y"][r]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_sijyou2
[endif]
[s]

*fumi_sijyou_page3
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_sijyou_page3'"]
[eval exp="f.oaite_viewing_target = '*fumi_sijyou_page3'"]
[call target=*info_sijyou_hyouji]

;1f.fumi_sijyou_number=[emb exp ="f.fumi_sijyou_number"][r]
[glink target=*fumi_sijyou_page2 text="←" size=20 width="20" x=510 y=480 color=white]

[eval exp="f.list_count = f.fumi_sijyou_number - 10"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_sijyou3
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_sijyou_number=[emb exp ="f.fumi_sijyou_number"][r]
[iscript]
	f.fumi_sijyou_midoku_y =  20 + 80 * ( f.fumi_sijyou_number - 10 ) - 80 * f.list_count;
	f.fumi_sijyou_y =  10 + 80 * ( f.fumi_sijyou_number - 10 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 2;
	f.fumi_hairetsu2 = f.fumi_list_sijyou_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_sijyou_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;f.midoku_list_hairetsu=[emb exp ="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]"][r]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target exp="f.fumi_atesaki='sijyou'; f.fumi_henjityu=1;" text="返信" size=16 width="32" x=850 y=&f.fumi_sijyou_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=850 y=&f.fumi_sijyou_midoku_y color=mediumslateblue bold=bold]
[endif]
;7f.fumi_sijyou_number=[emb exp ="f.fumi_sijyou_number"][r]
[if exp="f.fumi_sijyou_number==0"]
[else]
	[glink storage=fumi_sijyou.ks target=&f.fumi_list_sijyou_target[f.list_count] text=&f.fumi_list_sijyou_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_sijyou_y color=white]
;8f.fumi_sijyou_y=[emb exp ="f.fumi_sijyou_y"][r]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_sijyou3
[endif]
[s]

*info_sijyou_hyouji
[image layer=26 x=1 y=1 storage="bg/bg_info_sijyou.jpg"]
[glink target=&sf.info_list1[0] text=&sf.kouryaku_list_fullname[0] size=16 width="120" x=30 y=580 color=white]
[if exp="sf.kouryaku_ninzuu<2"]
[elsif exp="sf.kouryaku_ninzuu>=2"]
	[glink target=&sf.info_list1[1] text=&sf.kouryaku_list_fullname[1] size=16 width="120" x=230 y=580 color=white]
[endif]
;[if exp="sf.kouryaku_ninzuu<3"]
;[elsif exp="sf.kouryaku_ninzuu>=3"]
;	[glink target=&sf.info_list1[2] text=&sf.kouryaku_list_fullname[2] size=16 width="120" x=230 y=580 color=white]
;[endif]
[if exp="sf.kouryaku_ninzuu<4"]
[elsif exp="sf.kouryaku_ninzuu>=4"]
	[glink target=&sf.info_list1[3] text=&sf.kouryaku_list_fullname[3] size=16 width="120" x=430 y=580 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<5"]
[elsif exp="sf.kouryaku_ninzuu>=5"]
	[glink target=&sf.info_list1[4] text=&sf.kouryaku_list_fullname[4] size=16 width="120" x=630 y=580 color=white]
[endif]
	[glink target="info_owari" text="終了"  size=16 width="40" x=850 y=580 color=white]
[if exp="f.para_sijyou_koukando<0"]
[eval exp="f.para_koukando_x = 270"]
[elsif exp="f.para_sijyou_koukando<10"]
[eval exp="f.para_koukando_x = 281"]
[elsif exp="f.para_sijyou_koukando<100"]
[eval exp="f.para_koukando_x = 270"]
[else]
[eval exp="f.para_koukando_x = 255"]
[endif]
[if exp="f.para_sijyou_koukando<0"]
[eval exp="f.para_color = 'crimson'"]
[else]
[eval exp="f.para_color = 'black'"]
[endif]
[ptext text=&f.para_sijyou_koukando layer=27 size=25 x=&f.para_koukando_x y=323 color=&f.para_color bold=bold]
[ptext text=&f.para_sijyou_sintyou layer=27 size=25 x=255 y=364 color=black bold=bold]
[ptext text=&f.para_sijyou_taijuu layer=27 size=25 x=270 y=406 color=black bold=bold]
[ptext text=&f.para_sijyou_shumi layer=27 size=25 x=270 y=448 color=black bold=bold]
[return]
[s]

*info_jiyuuwaku1
[freeimage layer = 27]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*info_jiyuuwaku1'"]
[eval exp="f.oaite_viewing_target = '*info_jiyuuwaku1'"]
[call target=*info_jiyuuwaku1_hyouji]

;◆手紙一覧
;[eval exp="f.fumi_jiyuuwaku1_number=13"]
[if exp="f.fumi_jiyuuwaku1_number>5"]
			[glink target=*fumi_jiyuuwaku1_page2 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_jiyuuwaku1_number"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_jiyuuwaku1
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_jiyuuwaku1_midoku_y = ( 20 + 80 * f.fumi_jiyuuwaku1_number ) - 80 * f.list_count;
	f.fumi_jiyuuwaku1_y = ( 10 + 80 * f.fumi_jiyuuwaku1_number ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 3;
	f.fumi_hairetsu2 = f.fumi_list_jiyuuwaku1_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_jiyuuwaku1_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;f.midoku_list_hairetsu=[emb exp ="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]"][r]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target exp="f.fumi_atesaki='jiyuuwaku1'; f.fumi_henjityu=1;" text="返信" size=16 width="32" x=850 y=&f.fumi_jiyuuwaku1_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=850 y=&f.fumi_jiyuuwaku1_midoku_y color=mediumslateblue bold=bold]
[endif]
[if exp="f.fumi_jiyuuwaku1_number==0"]
[else]
	[glink storage=fumi_jiyuuwaku1.ks target=&f.fumi_list_jiyuuwaku1_target[f.list_count] text=&f.fumi_list_jiyuuwaku1_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_jiyuuwaku1_y color=white]
;[emb exp ="f.fumi_jiyuuwaku1_y"][r]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_jiyuuwaku1
[endif]
[s]

*fumi_jiyuuwaku1_page2
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_jiyuuwaku1_page2'"]
[eval exp="f.oaite_viewing_target = '*fumi_jiyuuwaku1_page2'"]
[call target=*info_jiyuuwaku1_hyouji]

;1f.fumi_jiyuuwaku1_number=[emb exp ="f.fumi_jiyuuwaku1_number"][r]
[glink target=*info_jiyuuwaku1 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_jiyuuwaku1_number>10"]
[glink target=*fumi_jiyuuwaku1_page3 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_jiyuuwaku1_number - 5"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_jiyuuwaku12
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_jiyuuwaku1_number=[emb exp ="f.fumi_jiyuuwaku1_number"][r]
[iscript]
	f.fumi_jiyuuwaku1_midoku_y =  20 + 80 * ( f.fumi_jiyuuwaku1_number - 5 ) - 80 * f.list_count;
	f.fumi_jiyuuwaku1_y =  10 + 80 * ( f.fumi_jiyuuwaku1_number - 5 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 3;
	f.fumi_hairetsu2 = f.fumi_list_jiyuuwaku1_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_jiyuuwaku1_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;f.midoku_list_hairetsu=[emb exp ="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]"][r]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target exp="f.fumi_atesaki='jiyuuwaku1'; f.fumi_henjityu=1;" text="返信" size=16 width="32" x=850 y=&f.fumi_jiyuuwaku1_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=850 y=&f.fumi_jiyuuwaku1_midoku_y color=mediumslateblue bold=bold]
[endif]
;7f.fumi_jiyuuwaku1_number=[emb exp ="f.fumi_jiyuuwaku1_number"][r]
[if exp="f.fumi_jiyuuwaku1_number==0"]
[else]
	[glink storage=fumi_jiyuuwaku1.ks target=&f.fumi_list_jiyuuwaku1_target[f.list_count] text=&f.fumi_list_jiyuuwaku1_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_jiyuuwaku1_y color=white]
;8f.fumi_jiyuuwaku1_y=[emb exp ="f.fumi_jiyuuwaku1_y"][r]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_jiyuuwaku12
[endif]
[s]

*fumi_jiyuuwaku1_page3
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_jiyuuwaku1_page3'"]
[eval exp="f.oaite_viewing_target = '*fumi_jiyuuwaku1_page3'"]
[call target=*info_jiyuuwaku1_hyouji]

;1f.fumi_jiyuuwaku1_number=[emb exp ="f.fumi_jiyuuwaku1_number"][r]
[glink target=*fumi_jiyuuwaku1_page2 text="←" size=20 width="20" x=510 y=480 color=white]

[eval exp="f.list_count = f.fumi_jiyuuwaku1_number - 10"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_jiyuuwaku13
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_jiyuuwaku1_number=[emb exp ="f.fumi_jiyuuwaku1_number"][r]
[iscript]
	f.fumi_jiyuuwaku1_midoku_y =  20 + 80 * ( f.fumi_jiyuuwaku1_number - 10 ) - 80 * f.list_count;
	f.fumi_jiyuuwaku1_y =  10 + 80 * ( f.fumi_jiyuuwaku1_number - 10 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 3;
	f.fumi_hairetsu2 = f.fumi_list_jiyuuwaku1_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_jiyuuwaku1_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;f.midoku_list_hairetsu=[emb exp ="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]"][r]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target exp="f.fumi_atesaki='jiyuuwaku1'; f.fumi_henjityu=1;" text="返信" size=16 width="32" x=850 y=&f.fumi_jiyuuwaku1_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=850 y=&f.fumi_jiyuuwaku1_midoku_y color=mediumslateblue bold=bold]
[endif]
;7f.fumi_jiyuuwaku1_number=[emb exp ="f.fumi_jiyuuwaku1_number"][r]
[if exp="f.fumi_jiyuuwaku1_number==0"]
[else]
	[glink storage=fumi_jiyuuwaku1.ks target=&f.fumi_list_jiyuuwaku1_target[f.list_count] text=&f.fumi_list_jiyuuwaku1_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_jiyuuwaku1_y color=white]
;8f.fumi_jiyuuwaku1_y=[emb exp ="f.fumi_jiyuuwaku1_y"][r]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_jiyuuwaku13
[endif]
[s]

*info_jiyuuwaku1_hyouji
[image layer=26 x=1 y=1 storage="bg/bg_info_jiyuuwaku1.jpg"]
[glink target=&sf.info_list1[0] text=&sf.kouryaku_list_fullname[0] size=16 width="120" x=30 y=580 color=white]
[if exp="sf.kouryaku_ninzuu<2"]
[elsif exp="sf.kouryaku_ninzuu>=2"]
	[glink target=&sf.info_list1[1] text=&sf.kouryaku_list_fullname[1] size=16 width="120" x=230 y=580 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<3"]
[elsif exp="sf.kouryaku_ninzuu>=3"]
	[glink target=&sf.info_list1[2] text=&sf.kouryaku_list_fullname[2] size=16 width="120" x=430 y=580 color=white]
[endif]
;[if exp="sf.kouryaku_ninzuu<4"]
;[elsif exp="sf.kouryaku_ninzuu>=4"]
;	[glink target=&sf.info_list1[3] text=&sf.kouryaku_list_fullname[3] size=16 width="120" x=430 y=580 color=white]
;[endif]
[if exp="sf.kouryaku_ninzuu<5"]
[elsif exp="sf.kouryaku_ninzuu>=5"]
	[glink target=&sf.info_list1[4] text=&sf.kouryaku_list_fullname[4] size=16 width="120" x=630 y=580 color=white]
[endif]
	[glink target="info_owari" text="終了"  size=16 width="40" x=850 y=580 color=white]
[if exp="f.para_jiyuuwaku1_koukando<0"]
[eval exp="f.para_koukando_x = 270"]
[elsif exp="f.para_jiyuuwaku1_koukando<10"]
[eval exp="f.para_koukando_x = 281"]
[elsif exp="f.para_jiyuuwaku1_koukando<100"]
[eval exp="f.para_koukando_x = 270"]
[else]
[eval exp="f.para_koukando_x = 255"]
[endif]
[if exp="f.para_jiyuuwaku1_koukando<0"]
[eval exp="f.para_color = 'crimson'"]
[else]
[eval exp="f.para_color = 'black'"]
[endif]
[ptext text=&f.para_jiyuuwaku1_koukando layer=27 size=25 x=&f.para_koukando_x y=323 color=&f.para_color bold=bold]
[ptext text=&f.para_jiyuuwaku1_sintyou layer=27 size=25 x=270 y=364 color=black bold=bold]
[ptext text=&f.para_jiyuuwaku1_taijuu layer=27 size=25 x=270 y=406 color=black bold=bold]
[ptext text=&f.para_jiyuuwaku1_shumi layer=27 size=25 x=270 y=448 color=black bold=bold]
[return]
[s]

*info_jiyuuwaku2
[freeimage layer = 27]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*info_jiyuuwaku2'"]
[eval exp="f.oaite_viewing_target = '*info_jiyuuwaku2'"]
[call target=*info_jiyuuwaku2_hyouji]

;◆手紙一覧
;[eval exp="f.fumi_jiyuuwaku2_number=13"]
[if exp="f.fumi_jiyuuwaku2_number>5"]
			[glink target=*fumi_jiyuuwaku2_page2 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_jiyuuwaku2_number"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_jiyuuwaku2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_jiyuuwaku2_midoku_y = ( 20 + 80 * f.fumi_jiyuuwaku2_number ) - 80 * f.list_count;
	f.fumi_jiyuuwaku2_y = ( 10 + 80 * f.fumi_jiyuuwaku2_number ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 4;
	f.fumi_hairetsu2 = f.fumi_list_jiyuuwaku2_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_jiyuuwaku2_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;f.midoku_list_hairetsu=[emb exp ="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]"][r]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target exp="f.fumi_atesaki='jiyuuwaku2'; f.fumi_henjityu=1;" text="返信" size=16 width="32" x=850 y=&f.fumi_jiyuuwaku2_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=850 y=&f.fumi_jiyuuwaku2_midoku_y color=mediumslateblue bold=bold]
[endif]
[if exp="f.fumi_jiyuuwaku2_number==0"]
[else]
	[glink storage=fumi_jiyuuwaku2.ks target=&f.fumi_list_jiyuuwaku2_target[f.list_count] text=&f.fumi_list_jiyuuwaku2_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_jiyuuwaku2_y color=white]
;[emb exp ="f.fumi_jiyuuwaku2_y"][r]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_jiyuuwaku2
[endif]
[s]

*fumi_jiyuuwaku2_page2
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_jiyuuwaku2_page2'"]
[eval exp="f.oaite_viewing_target = '*fumi_jiyuuwaku2_page2'"]
[call target=*info_jiyuuwaku2_hyouji]

;1f.fumi_jiyuuwaku2_number=[emb exp ="f.fumi_jiyuuwaku2_number"][r]
[glink target=*info_jiyuuwaku2 text="←" size=20 width="20" x=510 y=480 color=white]
[if exp="f.fumi_jiyuuwaku2_number>10"]
[glink target=*fumi_jiyuuwaku2_page3 text="→" size=20 width="20" x=855 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_jiyuuwaku2_number - 5"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_jiyuuwaku22
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_jiyuuwaku2_number=[emb exp ="f.fumi_jiyuuwaku2_number"][r]
[iscript]
	f.fumi_jiyuuwaku2_midoku_y =  20 + 80 * ( f.fumi_jiyuuwaku2_number - 5 ) - 80 * f.list_count;
	f.fumi_jiyuuwaku2_y =  10 + 80 * ( f.fumi_jiyuuwaku2_number - 5 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 4;
	f.fumi_hairetsu2 = f.fumi_list_jiyuuwaku2_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_jiyuuwaku2_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;f.midoku_list_hairetsu=[emb exp ="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]"][r]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target exp="f.fumi_atesaki='jiyuuwaku2'; f.fumi_henjityu=1;" text="返信" size=16 width="32" x=850 y=&f.fumi_jiyuuwaku2_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=850 y=&f.fumi_jiyuuwaku2_midoku_y color=mediumslateblue bold=bold]
[endif]
;7f.fumi_jiyuuwaku2_number=[emb exp ="f.fumi_jiyuuwaku2_number"][r]
[if exp="f.fumi_jiyuuwaku2_number==0"]
[else]
	[glink storage=fumi_jiyuuwaku2.ks target=&f.fumi_list_jiyuuwaku2_target[f.list_count] text=&f.fumi_list_jiyuuwaku2_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_jiyuuwaku2_y color=white]
;8f.fumi_jiyuuwaku2_y=[emb exp ="f.fumi_jiyuuwaku2_y"][r]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_jiyuuwaku22
[endif]
[s]

*fumi_jiyuuwaku2_page3
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_jiyuuwaku2_page3'"]
[eval exp="f.oaite_viewing_target = '*fumi_jiyuuwaku2_page3'"]
[call target=*info_jiyuuwaku2_hyouji]

;1f.fumi_jiyuuwaku2_number=[emb exp ="f.fumi_jiyuuwaku2_number"][r]
[glink target=*fumi_jiyuuwaku2_page2 text="←" size=20 width="20" x=510 y=480 color=white]

[eval exp="f.list_count = f.fumi_jiyuuwaku2_number - 10"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_jiyuuwaku23
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_jiyuuwaku2_number=[emb exp ="f.fumi_jiyuuwaku2_number"][r]
[iscript]
	f.fumi_jiyuuwaku2_midoku_y =  20 + 80 * ( f.fumi_jiyuuwaku2_number - 10 ) - 80 * f.list_count;
	f.fumi_jiyuuwaku2_y =  10 + 80 * ( f.fumi_jiyuuwaku2_number - 10 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 4;
	f.fumi_hairetsu2 = f.fumi_list_jiyuuwaku2_location_fumi[f.list_count];
[endscript]
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]>0"]
	[ptext text="未読" layer=28 size=15 x=510 y=&f.fumi_jiyuuwaku2_midoku_y color=mediumslateblue bold=bold]
[else]
[endif]
;f.midoku_list_hairetsu=[emb exp ="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]"][r]
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]==0"]
[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink storage=fumi_henji.ks target=&f.fumi_henji_target exp="f.fumi_atesaki='jiyuuwaku2'; f.fumi_henjityu=1;" text="返信" size=16 width="32" x=850 y=&f.fumi_jiyuuwaku2_y color=white]
[else]
	[ptext text="返信済" layer=28 size=15 x=850 y=&f.fumi_jiyuuwaku2_midoku_y color=mediumslateblue bold=bold]
[endif]
;7f.fumi_jiyuuwaku2_number=[emb exp ="f.fumi_jiyuuwaku2_number"][r]
[if exp="f.fumi_jiyuuwaku2_number==0"]
[else]
	[glink storage=fumi_jiyuuwaku2.ks target=&f.fumi_list_jiyuuwaku2_target[f.list_count] text=&f.fumi_list_jiyuuwaku2_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_jiyuuwaku2_y color=white]
;8f.fumi_jiyuuwaku2_y=[emb exp ="f.fumi_jiyuuwaku2_y"][r]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_jiyuuwaku23
[endif]
[s]

*info_jiyuuwaku2_hyouji
[image layer=26 x=1 y=1 storage="bg/bg_info_jiyuuwaku2.jpg"]
[glink target=&sf.info_list1[0] text=&sf.kouryaku_list_fullname[0] size=16 width="120" x=30 y=580 color=white]
[if exp="sf.kouryaku_ninzuu<2"]
[elsif exp="sf.kouryaku_ninzuu>=2"]
	[glink target=&sf.info_list1[1] text=&sf.kouryaku_list_fullname[1] size=16 width="120" x=230 y=580 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<3"]
[elsif exp="sf.kouryaku_ninzuu>=3"]
	[glink target=&sf.info_list1[2] text=&sf.kouryaku_list_fullname[2] size=16 width="120" x=430 y=580 color=white]
[endif]
[if exp="sf.kouryaku_ninzuu<4"]
[elsif exp="sf.kouryaku_ninzuu>=4"]
	[glink target=&sf.info_list1[3] text=&sf.kouryaku_list_fullname[3] size=16 width="120" x=630 y=580 color=white]
[endif]
;[if exp="sf.kouryaku_ninzuu<5"]
;[elsif exp="sf.kouryaku_ninzuu>=5"]
;	[glink target=&sf.info_list1[4] text=&sf.kouryaku_list_fullname[4] size=16 width="120" x=630 y=580 color=white]
;[endif]
	[glink target="info_owari" text="終了"  size=16 width="40" x=850 y=580 color=white]
[if exp="f.para_jiyuuwaku2_koukando<0"]
[eval exp="f.para_koukando_x = 270"]
[elsif exp="f.para_jiyuuwaku2_koukando<10"]
[eval exp="f.para_koukando_x = 281"]
[elsif exp="f.para_jiyuuwaku2_koukando<100"]
[eval exp="f.para_koukando_x = 270"]
[else]
[eval exp="f.para_koukando_x = 255"]
[endif]
[if exp="f.para_jiyuuwaku2_koukando<0"]
[eval exp="f.para_color = 'crimson'"]
[else]
[eval exp="f.para_color = 'black'"]
[endif]
[ptext text=&f.para_jiyuuwaku2_koukando layer=27 size=25 x=&f.para_koukando_x y=323 color=&f.para_color bold=bold]
[ptext text=&f.para_jiyuuwaku2_sintyou layer=27 size=25 x=270 y=364 color=black bold=bold]
[ptext text=&f.para_jiyuuwaku2_taijuu layer=27 size=25 x=270 y=406 color=black bold=bold]
[ptext text=&f.para_jiyuuwaku2_shumi layer=27 size=25 x=270 y=448 color=black bold=bold]
[return]
[s]

*info_owari
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
@jump storage=okeiko.ks target=*draw_button_system
[return]
[s]

[return]