package com.yerin.pet.dao.BaordDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yerin.pet.dto.FREEBoardDTO;
import com.yerin.pet.dto.PageDTO;

@Repository
public class FREEBoardDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public int boardWrite(FREEBoardDTO board) {
		return sql.insert("FREEBoard.freeboardWrite", board);
	}

	public List<FREEBoardDTO> boardList(String mid) {
		return sql.selectList("FREEBoard.boardList", mid);
	}

	public List<FREEBoardDTO> boardBhits() {
		return sql.selectList("FREEBoard.boardBhits");
	}
	
	public void boardHits(int bnumber) {
		sql.update("FREEBoard.boardHits", bnumber);
	}
	
	public FREEBoardDTO boardView(int bnumber) {
		return sql.selectOne("FREEBoard.boardView", bnumber);
	}

	public int boardUpdate(FREEBoardDTO board) {
		return sql.update("FREEBoard.boardUpdate", board);
	}

	public int boardDelete(int bnumber) {
		return sql.delete("FREEBoard.boardDelete", bnumber);
	}

	public int boardWriteFile(FREEBoardDTO board) {
		return sql.insert("FREEBoard.boardWriteFile", board);
	}

	public int listCount() {
		return sql.selectOne("FREEBoard.boardListCount");
	}

	public List<FREEBoardDTO> freeboardListPaging(PageDTO paging) {
		return sql.selectList("FREEBoard.boardListPaging", paging);
	}

	public List<FREEBoardDTO> boardSearch(String searchtype, String keyword) {
		Map<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("type", searchtype);
		searchMap.put("word", keyword);
		return sql.selectList("FREEBoard.boardSearch", searchMap);
	}
}







