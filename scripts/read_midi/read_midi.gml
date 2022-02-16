/// @function read_midi(file, raw)
/// @description Read midi file
/// @param file Midi file to read from
/// @param raw（可选）指定输出是否应由原始事件组成
function read_midi() {

	// 如果要取消筛选所有事件，请选择“raw”

	/*
	示例输出:

	[
		(由音符组成的ds_list:) [
			(note): [
				(start time:) 0,
				(note number:) 60,
				(velocity:) 10,
				(end time:) 100
			]
		] ,
		(由事件组成的ds_list): [
			(event:) [
				(event time:) 100,
				(event name:) "end of track",
				(event data:) "N/A"
			]
		]
	]
	*/

	/*
	输出示例（raw打开时）：
	使用网站，例如“https://www.mobilefish.com/tutorials/midi/midi_quickguide_specification.html“查找midi事件

	[
		(ds_list consisting of notes:) [
			(note): [
				（开始时间：）0，
				（注号：）60，
				（速度：）10，
				（结束时间：）100
			]
		] ,
		(ds_list consisting of raw events): [
			(event:) [
				(event time:) 100,
				(event status byte:) "FF",
				(event byte 1; substatus:) "F2",
				(event data:) "N/A"
			],
			(event:) [
				(event time:) 25,
				(event status byte:) "B0",
				(event byte 1; substatus:) "40",
				(event data:) "63"
			]
		]
	]
	*/


	var _raw = 0;
	if (argument_count > 1) {
		_raw = argument[1];
	}

	if (argument[0] != "") {
		var bin = file_bin_open(argument[0], 0);
		var size = file_bin_size(bin);
		var hexdata = "";
		while(file_bin_position(bin) < size) {
			var a = file_bin_read_byte(bin)
			hexdata += dec_to_hex(a);
		}
		file_bin_close(bin);
	} else {
		show_error("MIDI读取错误！按About退出", false);
		return 0;
	}

	if (string_copy(hexdata, 0, 8) != "4D546864") {
		show_error("MIDI读取错误！按About退出", false);
		return 0;
	}

	eventlist = ds_list_create();
	notelist = ds_list_create();

	var action = "";
	var notes = ds_list_create();
	for(var i = 0; i < 150; i++) {
		notes[| i] = ds_list_create();
	}

	var offset = 23;

	var trackamount = hex_to_dec(string_copy(hexdata, offset, 2));

	offset += 6;

	while(trackamount > 0) {
		offset += 16;
		trackamount--;
		total = 0;
	
		while(true) {
			var i = 2;
		
			var dtime = [];
			while(true) {
				dtime[array_length_1d(dtime)] = hex_to_bin(string_copy(hexdata, offset+(i-2), 2));
			
				if (string_copy(dtime[array_length_1d(dtime)-1], 0, 1) == "0") {
					var j = 0;
					var ntime = "";
					repeat(i/2) {
						ntime += "0";
					}
					repeat(i/2) {
						ntime += string_copy(dtime[j], 2, 7);
						j++;
					}
					dtime = hex_to_dec(bin_to_hex(ntime));
					offset += i;
					break;
				}
				i += 2;
			}

			var status = string_copy(hexdata, offset, 1);
			var fstatus = string_copy(hexdata, offset, 2);

			total += dtime;
		
			if (status == "C" or status == "D" or status == "8" or status == "9" or status == "E" or status == "B" or status == "A") {
				offset += 2;
				action = status;
			} else if (status == "F") {
				offset += 2;
				action = "";
				var substatus = string_copy(hexdata, offset, 2);
				offset += 2;
				if (substatus == "2F") {
					if (_raw) {
						ds_list_add(eventlist, [total, fstatus, substatus, "N/A"]);
					} else {
						ds_list_add(eventlist, [total, "end of track", "N/A"]);
					}
					offset += 2;
					break;
				}
				var l = string_copy(hexdata, offset, 2);
				offset += 2;
				if (_raw) {
					ds_list_add(eventlist, [total, fstatus, substatus, string_copy(hexdata, offset, hex_to_dec(l)*2)]);
				} else {
					if (substatus == "01") {
						ds_list_add(eventlist, [total, "text event", hex_to_text(string_copy(hexdata, offset, hex_to_dec(l)*2))]);
					}
					if (substatus == "04") {
						ds_list_add(eventlist, [total, "track name", hex_to_text(string_copy(hexdata, offset, hex_to_dec(l)*2))]);
					}
					if (substatus == "05") {
						ds_list_add(eventlist, [total, "lyric", hex_to_text(string_copy(hexdata, offset, hex_to_dec(l)*2))]);
					}
					if (substatus == "06") {
						ds_list_add(eventlist, [total, "marker", hex_to_text(string_copy(hexdata, offset, hex_to_dec(l)*2))]);
					}
					if (substatus == "02") {
						ds_list_add(eventlist, [total, "copyright notice", hex_to_text(string_copy(hexdata, offset, hex_to_dec(l)*2))]);
					}
					if (substatus == "51") {
						var timesig = (60000000 / hex_to_dec(string_copy(hexdata, offset, 6)));
						ds_list_add(eventlist, [total, "bpm change", timesig]);
					}
				}
				offset += hex_to_dec(l)*2;
			}
		
			if (action == "C") {
				if (_raw) {
					ds_list_add(eventlist, [total, fstatus, "N/A", string_copy(hexdata, offset, 2)]);
				} else {
					ds_list_add(eventlist, [total, "instrument change", hex_to_dec(string_copy(hexdata, offset, 2))]);
				}
				offset += 2;
			} if (action == "D") {
				if (_raw) {
					ds_list_add(eventlist, [total, fstatus, "N/A", string_copy(hexdata, offset, 2)]);
				}
				offset += 2;
			} else if (action == "E" or action == "A" or action == "B") {
				if (_raw) {
					ds_list_add(eventlist, [total, fstatus, string_copy(hexdata, offset, 2), string_copy(hexdata, offset+2, 2)]);
				}
				offset += 4;
			} else if (action == "9") {
				var note = hex_to_dec(string_copy(hexdata, offset, 2));
				offset += 2;
				var velocity = hex_to_dec(string_copy(hexdata, offset, 2));
				offset += 2;
				if (velocity > 0) {
					ds_list_add(notelist, [total, note, velocity, 0]);
					ds_list_add(notes[| note], ds_list_size(notelist)-1);
				} else {
					action = "8+";
				}
			} 
			if (action == "8" or action == "8+") {
				if (action != "8+") {
					var note = hex_to_dec(string_copy(hexdata, offset, 2));
					offset += 4;
				} else {
					action = "9";
				}
				array_set(notelist[| ds_list_find_value(notes[| note], ds_list_size(notes[| note]) - 1)], 3, total)
				ds_list_delete(notes[| note], ds_list_size(notes[| note]) - 1);
			}
		}
	}
	
	return [notelist, eventlist];


}
