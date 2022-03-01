package com.kh.mvc.ground.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.mvc.common.util.PageInfo;
import com.kh.mvc.ground.model.service.GroundService;
import com.kh.mvc.ground.model.vo.Ground;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/search")
@Controller
public class GroundController {

	@Autowired
	private GroundService service;
	
	// 파일 다운로드 기능시 활용하는 loader
//	@Autowired
//	private ResourceLoader resourceLoder;
	
	@GetMapping("/searchList")
	public ModelAndView list(ModelAndView model, @RequestParam Map<String, String> param) {
		int page = 1;
		
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		PageInfo pageInfo = new PageInfo(page, 10, service.getGroundCount(param), 6);
		List<Ground> list = service.getGroundList(pageInfo, param);
		
		model.addObject("list", list);
		model.addObject("pageInfo", pageInfo);
		model.setViewName("/search/searchList");
		
		return model;
	}
	
	
}
