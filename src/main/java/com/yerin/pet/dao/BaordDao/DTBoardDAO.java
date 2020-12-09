package com.yerin.pet.dao.BaordDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yerin.pet.dto.DTBoardDTO;
import com.yerin.pet.dto.PageDTO;

@Repository
public class DTBoardDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public List<DTBoardDTO> boardList(String mid) {
		return sql.selectList("DTBoard.boardList", mid);
	}

	public List<DTBoardDTO> boardBhits() {
		return sql.selectList("DTBoard.boardBhits");
	}
	
	public void boardHits(int bnumber) {
		sql.update("DTBoard.boardHits", bnumber);
	}
	
	public DTBoardDTO boardView(int bnumber) {
		return sql.selectOne("DTBoard.boardView", bnumber);
	}

	public int boardUpdate(DTBoardDTO board) {
		return sql.update("DTBoard.boardUpdate", board);
	}

	public int boardDelete(int bnumber) {
		return sql.delete("DTBoard.boardDelete", bnumber);
	}

	public int boardWriteFile(DTBoardDTO board) {
		return sql.insert("DTBoard.boardWriteFile", board);
	}

	public int listCount() {
		return sql.selectOne("DTBoard.boardListCount");
	}

	public List<DTBoardDTO> dtboardListPaging(PageDTO paging) {
		return sql.selectList("DTBoard.boardListPaging", paging);
	}
	
	public List<DTBoardDTO> boardSearch(String searchtype, String keyword) {
		Map<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("type", searchtype);
		searchMap.put("word", keyword);
		return sql.selectList("DTBoard.boardSearch", searchMap);
	}
}







