package com.kh.mvc.ground.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.kh.mvc.common.util.PageInfo;
import com.kh.mvc.ground.model.mapper.GroundMapper;
import com.kh.mvc.ground.model.vo.Ground;

@Service
public class GroundServiceImpl implements GroundService {

	@Autowired
	private GroundMapper mapper; 
	
	@Override
	public int getGroundCount(Map<String, String> param) {
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		
		searchMap.put("keyword", searchValue);
		
		return mapper.selectGroundCount(searchMap);
	}

	@Override
	public List<Ground> getGroundList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowNum = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		
		searchMap.put("keyword", searchValue);
		
		return mapper.selectGroundList(rowNum, searchMap);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public Ground findByNo(int g_no) {
		Ground ground = mapper.selectGroundByNo(g_no);
		
		return ground;
	}

	@Override
	@JsonProperty
	@Transactional(rollbackFor = Exception.class)
	public int saveGround(Ground ground) {
		System.out.println("service, ground : " + ground.toString());
		int result = 0;
		
		System.out.println("result1 : " + result);
		result = mapper.insertGround(ground);
		System.out.println("result2 : " + result);
		
		return result;
	}

}
