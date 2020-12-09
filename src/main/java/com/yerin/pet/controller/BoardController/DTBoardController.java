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

import com.yerin.pet.dto.DTBoardDTO;
import com.yerin.pet.service.BoardService.DTBoardService;

@Controller
public class DTBoardController {
	
	@Autowired
	private DTBoardService boardService;
	
	private ModelAndView mav;
	
	@RequestMapping(value="/dtbhits")
	public ModelAndView boardListbhits() {
		mav = boardService.boardListbhits();
		return mav;
	}
	
	@RequestMapping(value="/dtboardview")
	public ModelAndView boardView(@RequestParam("bnumber") int bnumber,
			@RequestParam(value="page",required=false,defaultValue="1") int page) {
		mav = boardService.boardView(bnumber, page);
		return mav;
	}
	
	@RequestMapping(value="/dtboardmodify")
	public ModelAndView boardUpdate(@RequestParam("bnumber") int bnumber) {
		mav = boardService.boardUpdate(bnumber);
		return mav;
	}
	
	@RequestMapping(value="/dtboardupdateprocess")
	public ModelAndView boardUpdateProcess(@ModelAttribute DTBoardDTO board) {
		mav = boardService.boardUpdateProcess(board);
		return mav;
	}
	
	@RequestMapping(value="/dtboarddelete")
	public ModelAndView boardDelete(@RequestParam("bnumber") int bnumber) {
		mav = boardService.boardDelete(bnumber);
		return mav;
	}
	
	@RequestMapping(value="/dtboardwritefileform")
	public String boardWriteFileForm() {
		return "boardwrite/dtboard";
	}
	
	@RequestMapping(value="/dtboardwrite")
	public ModelAndView boardWriteFile(@ModelAttribute DTBoardDTO board) throws IllegalStateException, IOException {
		mav = boardService.boardWriteFile(board);
		return mav;
	}
	
	@RequestMapping(value="/dtboardlist")
	public ModelAndView boardListPaging(
			@RequestParam(value="page",required=false,defaultValue="1") int page,
			@RequestParam(value="type",required=false,defaultValue="1") String type) {
		mav = boardService.boardListPaging(page,type);
		return mav;
	}
	
	@RequestMapping(value="/dtboardsearch")
	public ModelAndView boardSearch(@RequestParam("searchtype") String searchtype,
			@RequestParam("keyword") String keyword) {
		mav = boardService.boardSearch(searchtype, keyword);
		return mav;
	}
	
}
	

















