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

import com.yerin.pet.dto.FREEBoardDTO;
import com.yerin.pet.service.BoardService.FREEBoardService;

@Controller
public class FREEBoardController {
	
	@Autowired
	private FREEBoardService boardService;
	
	private ModelAndView mav;
	
	@RequestMapping(value="/freebhits")
	public ModelAndView boardListbhits() {
		mav = boardService.boardListbhits();
		return mav;
	}
	
	@RequestMapping(value="/freeboardview")
	public ModelAndView boardView(@RequestParam("bnumber") int bnumber,
			@RequestParam(value="page",required=false,defaultValue="1") int page) {
		mav = boardService.boardView(bnumber, page);
		return mav;
	}
	
	@RequestMapping(value="/freeboardmodify")
	public ModelAndView boardUpdate(@RequestParam("bnumber") int bnumber) {
		mav = boardService.boardUpdate(bnumber);
		return mav;
	}
	
	@RequestMapping(value="/freeboardupdateprocess")
	public ModelAndView boardUpdateProcess(@ModelAttribute FREEBoardDTO board) {
		mav = boardService.boardUpdateProcess(board);
		return mav;
	}
	
	@RequestMapping(value="/freeboarddelete")
	public ModelAndView boardDelete(@RequestParam("bnumber") int bnumber) {
		mav = boardService.boardDelete(bnumber);
		return mav;
	}
	
	@RequestMapping(value="/freeboardwritefileform")
	public String boardWriteFileForm() {
		return "boardwrite/freeboard";
	}
	
	@RequestMapping(value="/freeboardwrite")
	public ModelAndView boardWriteFile(@ModelAttribute FREEBoardDTO board) throws IllegalStateException, IOException {
		mav = boardService.boardWrite(board);
		return mav;
	}
	
	@RequestMapping(value="/freeboardlist")
	public ModelAndView boardListPaging(
			@RequestParam(value="page",required=false,defaultValue="1") int page,
			@RequestParam(value="type",required=false,defaultValue="1") String type) {
		mav = boardService.boardListPaging(page,type);
		return mav;
	}
	
	@RequestMapping(value="/freeboardsearch")
	public ModelAndView boardSearch(@RequestParam("searchtype") String searchtype,
			@RequestParam("keyword") String keyword) {
		mav = boardService.boardSearch(searchtype, keyword);
		return mav;
	}
	
}
	

















