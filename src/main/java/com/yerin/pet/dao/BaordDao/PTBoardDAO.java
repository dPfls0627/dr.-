package com.yerin.pet.dao.BaordDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yerin.pet.dto.HashtagDTO;
import com.yerin.pet.dto.PTBoardDTO;
import com.yerin.pet.dto.PageDTO;

@Repository
public class PTBoardDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public List<PTBoardDTO> boardList(String mid) {
		return sql.selectList("PTBoard.boardList", mid);
	}

	public List<PTBoardDTO> boardBhits() {
		return sql.selectList("PTBoard.boardBhits");
	}
	
	public void boardHits(int bnumber) {
		sql.update("PTBoard.boardHits", bnumber);
	}
	
	public PTBoardDTO boardView(int bnumber) {
		return sql.selectOne("PTBoard.boardView", bnumber);
	}

	public int boardUpdate(PTBoardDTO board) {
		return sql.update("PTBoard.boardUpdate", board);
	}
	public List<HashtagDTO> boardHashtag() {
		return sql.selectList("Hashtag.hashtagList");
	}

	public int boardDelete(int bnumber) {
		return sql.delete("PTBoard.boardDelete", bnumber);
	}

	public int boardWriteFile(PTBoardDTO board) {
		return sql.insert("PTBoard.boardWriteFile", board);
	}

	public int listCount() {
		return sql.selectOne("PTBoard.boardListCount");
	}

	public List<PTBoardDTO> ptboardListPaging(PageDTO paging) {
		return sql.selectList("PTBoard.boardListPaging", paging);
	}
	public List<PTBoardDTO> boardSearch(String searchtype, String keyword) {
		Map<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("type", searchtype);
		searchMap.put("word", keyword);
		return sql.selectList("PTBoard.boardSearch", searchMap);
	}

	public List<PTBoardDTO> ptboardList() {
		return sql.selectList("PTBoard.boardptlike");
	}
}







