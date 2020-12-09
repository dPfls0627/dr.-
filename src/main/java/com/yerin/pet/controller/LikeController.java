package com.yerin.pet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yerin.pet.dto.CommentDTO;
import com.yerin.pet.service.CommentService;
import com.yerin.pet.service.LikeService;

@Controller
public class LikeController {
	@Autowired
	private LikeService likeService;
	
	@RequestMapping(value="/RecUpdate")
	public @ResponseBody int reuWrite(@RequestParam("bnumber") String bnumberS) {
		int bnumber = Integer.parseInt(bnumberS);
		
		int reccount = likeService.commentWrite(bnumber);
		
		return reccount;
	}

}








