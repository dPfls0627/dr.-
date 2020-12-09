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

@Controller
public class CommentController {
	@Autowired
	private CommentService commentService;
	//등록
	@RequestMapping(value="/commentwrite")
	public @ResponseBody int commentWrite(
				@ModelAttribute CommentDTO comment) {
		int commentresult = commentService.commentWrite(comment);
		return commentresult;
	}
//출력	
	@RequestMapping(value="/commentlist")
	public @ResponseBody List<CommentDTO> commentList(
				@ModelAttribute CommentDTO comment) {
		List<CommentDTO> commentList = commentService.commentList(comment);
		return commentList;
	}
//삭제
	@RequestMapping(value="/commentdelete")
	public @ResponseBody int commentDelete(
			@RequestParam("cnumber") int cnumber) {
		int deleteresult = commentService.commentDelete(cnumber);
		return deleteresult;
	}
	
	@RequestMapping(value="/reserveload")
	public @ResponseBody String reserveload(@RequestParam("mname") String mname,
			@RequestParam("productid") int productid) {
		String resultMag = commentService.reserveLoad(mname, productid);
		return resultMag;
	}
}








