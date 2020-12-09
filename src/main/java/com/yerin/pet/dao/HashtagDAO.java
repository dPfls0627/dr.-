package com.yerin.pet.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yerin.pet.dto.HashtagDTO;

@Repository
public class HashtagDAO {
	
	@Autowired
	private SqlSessionTemplate sql;

	public int hashtagWrite(HashtagDTO hashtag) {
		return sql.insert("Hashtag.hashtagWrite",hashtag);
	}

	public List<HashtagDTO> hashtagList() {
		return sql.selectList("Hashtag.hashtagList");
	}

	public int hashtagDelete(int tagid) {
		return sql.delete("Hashtag.hashtagDelete",tagid);
	}



	
	
	

}
