package com.yerin.pet.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yerin.pet.dao.CommentDAO;
import com.yerin.pet.dao.LikeDAO;
import com.yerin.pet.dto.CommentDTO;

@Service
public class LikeService {
	
	@Autowired
	private LikeDAO likeDAO;
	
	public int commentWrite(int bnumber) {
		likeDAO.RECWrite(bnumber);
		
        int reccount = likeDAO.RECCount(bnumber);
		return reccount;
	}
	
}










