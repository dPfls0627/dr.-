package com.yerin.pet.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yerin.pet.dto.CommentDTO;

@Repository
public class CommentDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public int commentWrite(CommentDTO comment) {
		return sql.insert("Comment.commentWrite", comment);
	}

	public List<CommentDTO> commentList(String bnum,String btype) {
		Map<String, String> commentMap = new HashMap<String, String>();
		commentMap.put("bnum", bnum);
		commentMap.put("btype", btype);
		return sql.selectList("Comment.commentList", commentMap);
	}

	public int commentDelete(int cnumber) {
		return sql.delete("Comment.commentDelete", cnumber);
		
	}

	public String reserveLoad(String mname, int productid) {
		String product = Integer.toString(productid);
		Map<String, String> reservemap = new HashMap<String, String>();
		reservemap.put("mname", mname);
		reservemap.put("productid", product);
		return sql.selectOne("Comment.reserveload", reservemap);
	}
	
	

}










