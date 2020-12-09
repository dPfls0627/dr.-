package com.yerin.pet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yerin.pet.dto.HashtagDTO;
import com.yerin.pet.service.HashtagService;

@Controller
public class HashtagController {

	private ModelAndView mav;
	
	@Autowired
	private HashtagService hashtagService;
	
	
	@RequestMapping(value="/hashtagwrite")
	public @ResponseBody List<HashtagDTO> hashtagWrite(@RequestParam(value="tnameArray[]") List<String> tnameArray){ 	
//		System.out.println(tnameArray.size());
		HashtagDTO hashtag = new HashtagDTO();
		for(int i=0; i<tnameArray.size(); i++) {
			hashtag.setTname(tnameArray.get(i));
			hashtagService.hashtagWrite(hashtag);			
//			System.out.println(hashtag.toString());
		}
		List<HashtagDTO> hashtagList = hashtagService.hashtagList();
		return hashtagList;
	}
	
	
	@RequestMapping (value="/hashtagpop")
	public ModelAndView goHashtagPop() {
		mav = hashtagService.hashtagPop();
		return mav;
	}
	
	@RequestMapping (value="/hashtagdelete")
	public ModelAndView hashtagDelete(@RequestParam("tagid") int tagid) {
		mav = hashtagService.hashtagDelete(tagid);
		return mav;
	}
	
	

}