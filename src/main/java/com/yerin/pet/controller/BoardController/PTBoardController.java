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

import com.yerin.pet.dto.PTBoardDTO;
import com.yerin.pet.service.BoardService.PTBoardService;

@Controller
public class PTBoardController {
	
	@Autowired
	private PTBoardService boardService;
	
	private ModelAndView mav;
	
	@RequestMapping(value="/ptbhits")
	public ModelAndView boardListbhits() {
		mav = boardService.boardListbhits();
		return mav;
	}
	
	@RequestMapping(value="/ptboardview")
	public ModelAndView boardView(@RequestParam("bnumber") int bnumber,
			@RequestParam(value="page",required=false,defaultValue="1") int page) {
		mav = boardService.boardView(bnumber, page);
		return mav;
	}
	
	@RequestMapping(value="/ptboardmodify")
	public ModelAndView boardUpdate(@RequestParam("bnumber") int bnumber) {
		mav = boardService.boardUpdate(bnumber);
		return mav;
	}
	
	@RequestMapping(value="/ptboardupdateprocess")
	public ModelAndView boardUpdateProcess(@ModelAttribute PTBoardDTO board) {
		mav = boardService.boardUpdateProcess(board);
		return mav;
	}
	
	@RequestMapping(value="/ptboarddelete")
	public ModelAndView boardDelete(@RequestParam("bnumber") int bnumber) {
		mav = boardService.boardDelete(bnumber);
		return mav;
	}
	
	@RequestMapping(value="/ptboardwritefileform")
	public ModelAndView boardWriteFileForm() {
		mav = boardService.boardHashtag();
		return mav;
	}
	
	@RequestMapping(value="/ptboardwrite")
	public ModelAndView boardWriteFile(@ModelAttribute PTBoardDTO board) throws IllegalStateException, IOException {
		mav = boardService.boardWriteFile(board);
		return mav;
	}
	
	@RequestMapping(value="/ptboardlist")
	public ModelAndView boardListPaging(
			@RequestParam(value="page",required=false,defaultValue="1") int page,
			@RequestParam(value="type",required=false,defaultValue="1") String type) {
		mav = boardService.boardListPaging(page,type);
		return mav;
	}
	
	@RequestMapping(value="/ptboardsearch")
	public ModelAndView boardSearch(@RequestParam("searchtype") String searchtype,
			@RequestParam("keyword") String keyword) {
		mav = boardService.boardSearch(searchtype, keyword);
		return mav;
	}
	
}
	

















