package com.yerin.pet.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;


import com.yerin.pet.dao.HashtagDAO;
import com.yerin.pet.dto.HashtagDTO;

@Service
public class HashtagService {
	
	private ModelAndView mav;
	
	@Autowired
	private HashtagDAO hashtagDAO;

	public List<HashtagDTO> hashtagWrite(HashtagDTO hashtag) {
		int writeResult = hashtagDAO.hashtagWrite(hashtag);
		List<HashtagDTO> hashtagList = new ArrayList<HashtagDTO>();
		if(writeResult == 1) {
			hashtagList = hashtagDAO.hashtagList(); 
		}else {
			hashtagList = null;
		}
		return hashtagList;
	}
	
	public List<HashtagDTO> hashtagList() {
		List<HashtagDTO> hashtagList = new ArrayList<HashtagDTO>();
		hashtagList = hashtagDAO.hashtagList(); 
		return hashtagList;
	}

	public ModelAndView hashtagPop() {
		mav = new ModelAndView();
		List<HashtagDTO> hashtagList = hashtagDAO.hashtagList();
		mav.addObject("hashtagList",hashtagList);
		mav.setViewName("hashtagpop");
		return mav;
	}

	public ModelAndView hashtagDelete(int tagid) {
		mav = new ModelAndView();
		int deleteResult = hashtagDAO.hashtagDelete(tagid);
		if(deleteResult == 1) {
			mav.setViewName("redirect:/hashtagpop");
		}else {
			mav.setViewName("HashtagDeleteFail");
		}
		return mav;
	}

	

	

}
