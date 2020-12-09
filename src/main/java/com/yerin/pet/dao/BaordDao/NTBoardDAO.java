package com.yerin.pet.dao.BaordDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yerin.pet.dto.NTBoardDTO;
import com.yerin.pet.dto.PageDTO;

@Repository
public class NTBoardDAO {

	@Autowired
	private SqlSessionTemplate sql;
	

	public List<NTBoardDTO> boardList(String mid) {
		return sql.selectList("NTBoard.boardList", mid);
	}

	public List<NTBoardDTO> boardBhits() {
		return sql.selectList("NTBoard.boardBhits");
	}
	
	public void boardHits(int bnumber) {
		sql.update("NTBoard.boardHits", bnumber);
	}
	
	public NTBoardDTO boardView(int bnumber) {
		return sql.selectOne("NTBoard.boardView", bnumber);
	}

	public int boardUpdate(NTBoardDTO board) {
		return sql.update("NTBoard.boardUpdate", board);
	}

	public int boardDelete(int bnumber) {
		return sql.delete("NTBoard.boardDelete", bnumber);
	}

	public int boardWriteFile(NTBoardDTO board) {
		return sql.insert("NTBoard.boardWriteFile", board);
	}

	public int listCount() {
		return sql.selectOne("NTBoard.ntboardListCount");
	}

	public List<NTBoardDTO> ntboardListPaging(PageDTO paging) {
		return sql.selectList("NTBoard.ntboardListPaging", paging);
	}
	
	public List<NTBoardDTO> boardSearch(String searchtype, String keyword) {
		Map<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("type", searchtype);
		searchMap.put("word", keyword);
		return sql.selectList("NTBoard.boardSearch", searchMap);
	}
}







