package com.yerin.pet.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yerin.pet.dto.CommentDTO;

@Repository
public class LikeDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public void RECWrite(int bnumber) {
		 sql.update("REC.recWrite", bnumber);
	}
	

	public int RECCount(int bnumber) {
		return sql.selectOne("REC.recCount", bnumber);
	}
	
	

}










