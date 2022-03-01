package com.kh.mvc.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kh.mvc.member.model.vo.Member;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter{
	
	// preHandle : 컨트롤러가 호출되기 이전에 호출되는 메소드
	// return 값 : 컨트롤러의 수행 여부를 결정, false = 실행 x
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("preHandle()");
		
		Member loginMember = (Member) request.getSession().getAttribute("loginMember");
		
		if(loginMember == null) {
			request.setAttribute("msg", "로그인 후 이용이 가능합니다.");
			request.setAttribute("location", "/");
			request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp").forward(request, response);
			
			return false; // false 이면 이후에 컨트롤러가 수행되지 않음
		}
		
		return super.preHandle(request, response, handler);
	}

	// postHandle: 컨트롤러가 호출 된 이후 호출되는 메소드
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("postHandle() " + modelAndView.getViewName());
		
		super.postHandle(request, response, handler, modelAndView);
	}
	
	// afterCompletion: 컨트롤러 - View 전송이 끝난 이후 호출되는 메소드
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("afterCompletion()");
		
		super.afterCompletion(request, response, handler, ex);
	}
	
	// afterConcurrentHandlingStarted : 컨트롤러가 AJAX나 페이징을 직접 그릴때 afterCompletion 대신 호출하는 메소드
	@Override
	public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("afterConcurrentHandlingStarted()");
		
		super.afterConcurrentHandlingStarted(request, response, handler);
	}
}
