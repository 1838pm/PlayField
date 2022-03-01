package com.kh.mvc.member.model.service;

import com.kh.mvc.member.model.vo.Member;

public interface MemberService {

	Member login(String id, String pwd);
	
	int save(Member member);
	
	boolean validate(String userId);
	
	Member findById(String id);
	
	int delete(String id);
	
	int updatePwd(Member loginMember, String userPwd);
}
