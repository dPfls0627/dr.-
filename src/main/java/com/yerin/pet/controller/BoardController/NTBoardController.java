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

import com.yerin.pet.dto.NTBoardDTO;
import com.yerin.pet.service.BoardService.NTBoardService;

@Controller
public class NTBoardController {
	
	@Autowired
	private NTBoardService boardService;
	
	private ModelAndView mav;
	
	@RequestMapping(value="/ntbhits")
	public ModelAndView boardListbhits() {
		mav = boardService.boardListbhits();
		return mav;
	}
	
	@RequestMapping(value="/ntboardview")
	public ModelAndView boardView(@RequestParam("bnumber") int bnumber,
			@RequestParam(value="page",required=false,defaultValue="1") int page) {
		mav = boardService.boardView(bnumber, page);
		return mav;
	}
	
	@RequestMapping(value="/ntboardmodify")
	public ModelAndView boardUpdate(@RequestParam("bnumber") int bnumber) {
		mav = boardService.boardUpdate(bnumber);
		return mav;
	}
	
	@RequestMapping(value="/ntboardupdateprocess")
	public ModelAndView boardUpdateProcess(@ModelAttribute NTBoardDTO board) {
		mav = boardService.boardUpdateProcess(board);
		return mav;
	}
	
	@RequestMapping(value="/ntboarddelete")
	public ModelAndView boardDelete(@RequestParam("bnumber") int bnumber) {
		mav = boardService.boardDelete(bnumber);
		return mav;
	}
	
	@RequestMapping(value="/ntboardwritefileform")
	public String boardWriteFileForm() {
		return "boardwrite/ntboard";
	}
	
	@RequestMapping(value="/ntboardwrite")
	public ModelAndView boardWriteFile(@ModelAttribute NTBoardDTO board) throws IllegalStateException, IOException {
		mav = boardService.boardWrite(board);
		return mav;
	}
	
	@RequestMapping(value="/ntboardlist")
	public ModelAndView boardListPaging(
			@RequestParam(value="page",required=false,defaultValue="1") int page) {
		mav = boardService.boardListPaging(page);
		 System.out.println(mav);
		return mav;
	}
	
	@RequestMapping(value="/ntboardsearch")
	public ModelAndView boardSearch(@RequestParam("searchtype") String searchtype,
			@RequestParam("keyword") String keyword) {
		mav = boardService.boardSearch(searchtype, keyword);
		return mav;
	}
	
}
	

















