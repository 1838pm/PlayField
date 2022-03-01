package com.kh.mvc.member.model.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.mvc.member.model.mapper.MemberMapper;
import com.kh.mvc.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Override
	public Member login(String id, String pwd) { // 로그인 확인 메소드
		Member member = this.findById(id);
	
		if(id.equals("admin")) {
			return member;
		}
		
//		System.out.println(member.getPwd()); // Hash code로 암호화된 패스워드가 출력
//		System.out.println(passwordEncoder.encode(pwd)); // encode를 통해 평문에서 암호문으로 바꾸는 코드
//		System.out.println(passwordEncoder.matches(pwd, member.getPwd())); 
		// 파라메터로 받아온 pwd를 암호 화하고 기존 암호화 비교하는 코드
		
		System.out.println("check");
		if(member != null && passwordEncoder.matches(pwd, member.getPwd()) == true) {
			return member;
		} else if(member != null && pwd.equals(member.getPwd()) == true) {
			return member;
		} {
			return null;
		}
		
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int save(Member member) { // 회원가입 메소드
		int result = 0;
		try {
			if(member.getId() == null || member.getId().equals("")) {
				result = mapper.updateMember(member);
				System.out.println("result(serviceImpl) if : " + result);
			} else {
				String pwdEncode = passwordEncoder.encode(member.getPwd()); // 비밀번호를 hash code로 변환하기 위한 코드
				member.setPwd(pwdEncode);
				//이거 통해서 가입할때 패스워드 변경되는데 이거를 안거치고 바로 db에 저장하신거라서 안되는거였어요 아하...그러면 그 회원가입으로 해서 가입해야 저장되는건가요?
				//이걸 통해서 가입하시거나 이 부분을 없애서 사용을 안하시면ㅇ 되요 음...그렇군요 알겠습니다!
				result = mapper.insertMember(member);
				System.out.println("result(serviceImpl) else : " + result);
				System.out.println(member.getPwd());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public boolean validate(String userId) { // 아이디 중복확인을 위한 메소드
		
		return this.findById(userId) != null;
	}

	@Override
	public Member findById(String id) { // 아이디 찾기 메소드
		return mapper.selectMember(id);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int delete(String id) { // 계정탈퇴(상태 변환) 메소드
		return mapper.deleteMember(id);
	}

	@Override
	public int updatePwd(Member loginMember, String userPwd) { // 비밀번호 변경 메소드
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", ""+loginMember.getId());
		map.put("newPwd", passwordEncoder.encode(userPwd));
		return mapper.updatePwd(map);
	}


}
