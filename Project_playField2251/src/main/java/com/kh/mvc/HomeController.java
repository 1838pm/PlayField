package com.kh.mvc;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("/board/boardList")
	public String boardList() {
		
		return "board/boardList";
	}
	
	@RequestMapping("/board/boardView")
	public String boardView() {
		
		return "board/boardView";
	}
	
	@RequestMapping("/board_trade/tradeList")
	public String tradeList() {
		
		return "board_trade/tradeList";
	}
	
	@RequestMapping("/board_trade/tradeView")
	public String tradeView() {
		
		return "board_trade/tradeView";
	}
	
	
	@RequestMapping("/search/searchList")
	public String searchList() {
		
		return "search/searchList";
	}
	
	@RequestMapping("/search/searchView")
	public String searchView() {
		
		return "search/searchView";
	}
	
	@RequestMapping("/match/matchList")
	public String matchList() {
		
		return "match/matchList";
	}
	
	@RequestMapping("/match/matchView")
	public String matchView() {
		
		return "match/matchView";
	}
	
	@RequestMapping("/member/myPages1")
	public String myPages1() {
		
		return "member/myPages1";
	}
	
	@RequestMapping("/member/myPages2")
	public String myPages2() {
		
		return "member/myPages2";
	}
	
	@RequestMapping("/member/myPages3")
	public String myPages3() {
		
		return "member/myPages3";
	}
	
	@RequestMapping("/member/myPages4")
	public String myPages4() {
		
		return "member/myPages4";
	}
	
	@RequestMapping("/member/myPages5")
	public String myPages5() {
		
		return "member/myPages5";
	}
	
	
}
