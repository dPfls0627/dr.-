package com.yerin.pet.dao.BaordDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yerin.pet.dto.PageDTO;
import com.yerin.pet.dto.VODBoardDTO;

@Repository
public class VODBoardDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public int boardWrite(VODBoardDTO board) {
		return sql.insert("VODBoard.boardWrite", board);
	}

	public List<VODBoardDTO> boardList(String mid) {
		return sql.selectList("VODBoard.boardList", mid);
	}

	public List<VODBoardDTO> boardBhits() {
		return sql.selectList("VODBoard.boardBhits");
	}
	
	public void boardHits(int bnumber) {
		sql.update("VODBoard.boardHits", bnumber);
	}
	
	public VODBoardDTO boardView(int bnumber) {
		return sql.selectOne("VODBoard.boardView", bnumber);
	}

	public int boardUpdate(VODBoardDTO board) {
		return sql.update("VODBoard.boardUpdate", board);
	}

	public int boardDelete(int bnumber) {
		return sql.delete("VODBoard.boardDelete", bnumber);
	}

	public int boardWriteFile(VODBoardDTO board) {
		return sql.insert("VODBoard.boardWriteFile", board);
	}

	public int listCount() {
		return sql.selectOne("VODBoard.boardListCount");
	}

	public List<VODBoardDTO> vodboardListPaging(PageDTO paging) {
		return sql.selectList("VODBoard.boardListPaging", paging);
	}
	

	public List<VODBoardDTO> boardSearch(String searchtype, String keyword) {
		Map<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("type", searchtype);
		searchMap.put("word", keyword);
		return sql.selectList("VODBoard.boardSearch", searchMap);
	}
}







