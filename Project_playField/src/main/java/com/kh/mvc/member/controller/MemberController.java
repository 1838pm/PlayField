package com.kh.mvc.member.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.mvc.member.model.service.MemberService;
import com.kh.mvc.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SessionAttributes("loginMember")
@Controller
public class MemberController {

	@Autowired
	private MemberService service;
	
	@GetMapping("/member/signIn")
	public String signInpage() {
		log.info("로그인 페이지 요청");
		
		return "member/signIn";
	}
	
	@PostMapping("/member/signIn")
	public ModelAndView login(ModelAndView model, String id, String pwd) {
		log.info("{},{}", id, pwd);
		
		Member loginMember = service.login(id, pwd);
		
		if(loginMember != null) {
			model.addObject("loginMember", loginMember);
			model.setViewName("redirect:/");
		} else {
			model.addObject("msg", "아이디나 패스워드가 일치하지 않습니다.");
			model.addObject("location", "/member/signIn");
			model.setViewName("common/msg");
		}
		
		return model;
	}
	
	@RequestMapping("/logout")
	public String logout(SessionStatus status) {
		log.info("status : " + status.isComplete()); // 로그인 상태
		status.setComplete(); // 세션을 종료
		log.info("status : " + status.isComplete()); // 로그아웃 상태
		
		return "redirect:/";
	}
	
	@GetMapping("/member/signUp")
	public String signUpPage() {
		log.info("회원가입 페이지 요청");
		
		return "member/signUp";
	}
	
	@PostMapping("/member/signUp") // 회원가입 메소드
	public ModelAndView signUp(ModelAndView model, @ModelAttribute Member member) {
		log.info("회원가입 user : " + member);
		
		int result = service.save(member);
		System.out.println("result(memberController) : " + result);
		
		if(result > 0) {
			model.addObject("msg", "회원가입에 성공하였습니다.");
			model.addObject("location", "/");
		} else {
			model.addObject("msg", "회원가입에 실패하였습니다.");
			model.addObject("location", "/");
		}
		
		model.setViewName("common/msg");
		
		return model;
	}
	
	@GetMapping("/member/idCheck") // 아이디 중복 체크 확인 메소드
	public ResponseEntity<Map<String, Object>> idCheck(String id) {
		log.info("userId : " + id);
		
		boolean result = service.validate(id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("validate", result);
		
		return new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
	}
	
	// 회원정보 수정 페이지에 연결 후 주석 제거
//	@PostMapping("/member/update")
//	public ModelAndView update(ModelAndView model, @ModelAttribute Member member, 
//			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
//		
//		if(loginMember == null || loginMember.getId().equals(member.getId()) == false) { // 아이디가 다르거나 로그인이 안 되있을 시 "잘못된 접근" 알림
//			model.addObject("msg", "잘못된 접근입니다.");
//			model.addObject("location", "/");
//			model.setViewName("common/msg");
//			return model;
//		}
//		
//		member.setId(loginMember.getId());
//		int result = service.save(member);
//		
//		if(result > 0) {
//			model.addObject("loginMember", service.findById(member.getId())); // 세션에 회원 정보를 넣는 코드
//			model.addObject("msg", "회원정보를 수정하였습니다.");
//			model.addObject("location", "/member/마이페이지");
//		} else {
//			model.addObject("msg", "회원정보 수정에 실패하였습니다.");
//			model.addObject("location", "/member/마이페이지");
//		}
//		
//		model.setViewName("common/msg");
//		
//		return model;
//	}
	
	// 삭제 페이지 생성 시 주석 제거
//	@GetMapping("/member/delete")
//	public ModelAndView delete(ModelAndView model, @SessionAttribute(name = "loginMember", required = false) Member loginMember) {
//		int result = service.delete(loginMember.getId());
//		
//		if(result > 0) {
//			model.addObject("msg", "정상적으로 탈퇴되었습니다.");
//			model.addObject("location", "logout");
//		} else {
//			model.addObject("msg", "회원탈퇴 실패하였습니다.");
//			model.addObject("location", "/member/마이페이지");
//		}
//		
//		model.setViewName("common/msg");
//	
//		return model;
//	}
	
	// 비밀번호 변경 페이지 있다면 주석 제거
//	@GetMapping("/member/updatePwd")
//	public String updatePwd() {
//		return "/member/updatePwd";
//	}
//	
//	@PostMapping("/member/updatePwd")
//	public ModelAndView updatePwd(ModelAndView model, @SessionAttribute(name = "loginMember", required = false) Member loginMember , 
//			String pwd) {
//		int result = service.updatePwd(loginMember, pwd);
//		
//		if(result > 0) {
//			model.addObject("msg", "정상적으로 변경되었습니다.");
//		} else {
//			model.addObject("msg", "정상적으로 변경되지 않았습니다.");
//		}
//		
//		model.addObject("script", "self.close()");
//		model.setViewName("common/msg");
//		
//		return model;
//	}
}
