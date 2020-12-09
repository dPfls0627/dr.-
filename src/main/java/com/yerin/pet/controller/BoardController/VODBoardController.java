package com.yerin.pet.controller.BoardController;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.yerin.pet.dto.VODBoardDTO;
import com.yerin.pet.service.BoardService.VODBoardService;

@Controller
public class VODBoardController {
	
	@Autowired
	private VODBoardService boardService;
	
	private ModelAndView mav;
	
	@RequestMapping(value="/vodbhits")
	public ModelAndView boardListbhits() {
		mav = boardService.boardListbhits();
		return mav;
	}
	
	@RequestMapping(value="/vodboardview")
	public ModelAndView boardView(@RequestParam("bnumber") int bnumber,
			@RequestParam(value="page",required=false,defaultValue="1") int page) {
		mav = boardService.boardView(bnumber, page);
		return mav;
	}
	
	@RequestMapping(value="/vodboardmodify")
	public ModelAndView boardUpdate(@RequestParam("bnumber") int bnumber) {
		mav = boardService.boardUpdate(bnumber);
		return mav;
	}
	
	@RequestMapping(value="/vodboardupdateprocess")
	public ModelAndView boardUpdateProcess(@ModelAttribute VODBoardDTO board) {
		mav = boardService.boardUpdateProcess(board);
		return mav;
	}
	
	@RequestMapping(value="/vodboarddelete")
	public ModelAndView boardDelete(@RequestParam("bnumber") int bnumber) {
		mav = boardService.boardDelete(bnumber);
		return mav;
	}
	
	@RequestMapping(value="/vodboardwritefileform")
	public String boardWriteFileForm() {
		return "boardwrite/vodboard";
	}
	
	@RequestMapping(value="/vodboardwrite")
	public ModelAndView boardWriteFile(@ModelAttribute VODBoardDTO board)  throws IllegalStateException, IOException {
		mav = boardService.boardWriteFile(board);
		return mav;
	}
	
	@RequestMapping(value="/vodboardlist")
	public ModelAndView boardListPaging(
			@RequestParam(value="page",required=false,defaultValue="1") int page,
			@RequestParam(value="type",required=false,defaultValue="1") String type) {
		mav = boardService.boardListPaging(page,type);
		return mav;
	}
	
	@RequestMapping(value="/vodboardsearch")
	public ModelAndView boardSearch(@RequestParam("searchtype") String searchtype,
			@RequestParam("keyword") String keyword) {
		mav = boardService.boardSearch(searchtype, keyword);
		return mav;
	}
	
}
	

















