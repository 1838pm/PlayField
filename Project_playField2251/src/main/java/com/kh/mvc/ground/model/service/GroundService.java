package com.kh.mvc.ground.model.service;

import java.util.List;
import java.util.Map;

import com.kh.mvc.common.util.PageInfo;
import com.kh.mvc.ground.model.vo.Ground;

public interface GroundService {

	int getGroundCount(Map<String, String> param);
	
	List<Ground> getGroundList(PageInfo pageInfo, Map<String, String> param);
	
	Ground findByNo(int g_no);
	
	int saveGround(Ground ground);
}
