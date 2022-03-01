package com.kh.mvc.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {

	private String id;
	private String pwd;
	private String name;
	private String nick;
	private String phone;
	private String mail;
	private String age;
	private String height;
	private String weight;
	private String position;
	private String athlete;
	private String levels;
	private String point;
	private String role;
	private String status;
	
}
