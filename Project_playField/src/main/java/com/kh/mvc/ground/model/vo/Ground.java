package com.kh.mvc.ground.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Ground {

	private String g_no;
	private String g_svcnm;
	private String g_placenm;
	private String g_areanm;
	private String g_url;
	private String g_imgurl;
	private String g_place_x;
	private String g_place_y;
	private String g_pay;
	private String g_tel;
	private String g_start;
	private String g_end;
}
