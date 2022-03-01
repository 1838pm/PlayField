package com.kh.mvc.ground.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.mvc.ground.model.vo.Ground;

@Mapper
public interface GroundMapper {

	List<Ground> selectGroundList(RowBounds rowNum, Map<String, String> map);
	
	int selectGroundCount(Map<String, String> map);
	
	Ground selectGroundByNo(int g_no);
	
	int insertGround(Ground ground);
}
