package com.yerin.pet.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yerin.pet.dto.BoardDTO;
import com.yerin.pet.dto.PageDTO;

@Repository
public class BoardDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public int boardWrite(BoardDTO board) {
		return sql.insert("Board.boardWrite", board);
	}

	public List<BoardDTO> boardList(String mid) {
		return sql.selectList("Board.boardList", mid);
	}

	public List<BoardDTO> boardBhits() {
		return sql.selectList("Board.boardBhits");
	}
	
	public void boardHits(int bnumber) {
		sql.update("Board.boardHits", bnumber);
	}
	
	public BoardDTO boardView(int bnumber) {
		return sql.selectOne("Board.boardView", bnumber);
	}

	public int boardUpdate(BoardDTO board) {
		return sql.update("Board.boardUpdate", board);
	}

	public int boardDelete(int bnumber) {
		return sql.delete("Board.boardDelete", bnumber);
	}

	public int boardWriteFile(BoardDTO board) {
		return sql.insert("Board.boardWriteFile", board);
	}

	public int listCount() {
		return sql.selectOne("Board.boardListCount");
	}

	public List<BoardDTO> boardListPaging(PageDTO paging) {
		return sql.selectList("Board.boardListPaging", paging);
	}

	public List<BoardDTO> boardSearch(String searchtype, String keyword) {
		Map<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("type", searchtype);
		searchMap.put("word", keyword);
		return sql.selectList("Board.boardSearch", searchMap);
	}
}







