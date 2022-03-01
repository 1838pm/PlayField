package com.kh.mvc.board.model.service;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.kh.mvc.board.model.mapper.BoardMapper;
import com.kh.mvc.board.model.vo.Board;
import com.kh.mvc.board.model.vo.Reply;
import com.kh.mvc.common.util.PageInfo;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveBoard(Board board) {
		int result = 0;

		if (board.getNo() == 0) {
			result = mapper.insertBoard(board);
		} else {
			result = mapper.updateBoard(board);
		}
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveReply(Reply reply) {
		return mapper.insertReply(reply);
	}

	@Override
	public String saveFile(MultipartFile upfile, String savePath) {
		// 저장 경로의 폴더 생성부
		File folder = new File(savePath);

		if (folder.exists() == false) {
			folder.mkdirs();
		}

		System.out.println("savePath : " + savePath);

		String originalFileName = upfile.getOriginalFilename();
		String reNameFileName = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmssSSS"))
				+ originalFileName.substring(originalFileName.lastIndexOf("."));
		String reNamePath = savePath + "/" + reNameFileName;

		// 업로드 된 파일 이름을 바꾸고, 실제 디스크에 저장하는 코드부
		try {
			upfile.transferTo(new File(reNamePath));
		} catch (Exception e) {
			return null;
		}

		return reNameFileName;
	}

	@Override
	public int getBoardCount(Map<String, String> param) {
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		System.out.println("searchValue : " + searchValue);
		if (searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if (type.equals("title")) {
				searchMap.put("titleKeyword", searchValue);
			}
			else if (type.equals("content")) {
				searchMap.put("contentKeyword", searchValue);
			}
			else if(type.equals("writer")) {
				searchMap.put("writerKeyword", searchValue);
			}
		}
		System.out.println(searchMap);
		return mapper.selectBoardCount(searchMap);
	}

	@Override
	public List<Board> getBoardList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());

		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		if (searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if (type.equals("title")) {
				searchMap.put("titleKeyword", searchValue);
			}
			else if (type.equals("content")) {
				searchMap.put("contentKeyword", searchValue);
			}
			else if(type.equals("writer")) {
				searchMap.put("writerKeyword", searchValue);
			}
		}

		return mapper.selectBoardList(rowBounds, searchMap);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public Board findByNo(int boardNo) {
		Board board = mapper.selectBoardByNo(boardNo);
		board.setReadCount(board.getReadCount() + 1);
		mapper.updateReadCount(board);
		return board;
	}

	public void deleteFile(String filePath) {
		File file = new File(filePath);
		if (file.exists()) {
			file.delete();
		}
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int deleteBoard(int no) {
		Board board = mapper.selectBoardByNo(no);
		try {
			File file = new File(board.getRenamedFileName());
			if (file.exists()) {
				file.delete();
			}
		} catch (Exception e) {}
		return mapper.deleteBoard(no);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int deleteReply(int no) {
		return mapper.deleteReply(no);
	}

}
