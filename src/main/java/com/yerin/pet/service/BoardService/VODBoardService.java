package com.yerin.pet.service.BoardService;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.yerin.pet.dao.CommentDAO;
import com.yerin.pet.dao.BaordDao.VODBoardDAO;
import com.yerin.pet.dto.CommentDTO;
import com.yerin.pet.dto.DTBoardDTO;
import com.yerin.pet.dto.FREEBoardDTO;
import com.yerin.pet.dto.NTBoardDTO;
import com.yerin.pet.dto.PTBoardDTO;
import com.yerin.pet.dto.PageDTO;
import com.yerin.pet.dto.VODBoardDTO;

@Service
public class VODBoardService {
	
	@Autowired
	private VODBoardDAO boardDAO;
	
	@Autowired
	private CommentDAO commentDAO;
	
	private ModelAndView mav;
	
	private static final int PAGE_LIMIT = 10;
	private static final int BLOCK_LIMIT = 14;
	
	public ModelAndView boardWriteFile(VODBoardDTO board) {
		mav = new ModelAndView();
		int writeResult = boardDAO.boardWriteFile(board);
		if(writeResult > 0)
			mav.setViewName("redirect:/vodboardlist");
		else 
			mav.setViewName("BoardWriteFail");
		return mav;
	}
	
	public ModelAndView boardView(int bnumber, int page) {
		mav = new ModelAndView();
		boardDAO.boardHits(bnumber);
		VODBoardDTO boardView = boardDAO.boardView(bnumber);
		
		List<CommentDTO> commentList = commentDAO.commentList(bnumber);
		
		mav.addObject("page", page);
		mav.addObject("boardView", boardView);
		mav.addObject("commentList", commentList);
		mav.setViewName("boardview/vodview");
		return mav;
	}

	public ModelAndView boardUpdate(int bnumber) {
		mav = new ModelAndView();
		VODBoardDTO boardUpdate = boardDAO.boardView(bnumber);
		mav.addObject("boardUpdate", boardUpdate);
		mav.setViewName("boardup/vodviewup");
		return mav;
	}

	public ModelAndView boardUpdateProcess(VODBoardDTO board) {
		mav = new ModelAndView();
		int updateResult = boardDAO.boardUpdate(board);
		if(updateResult > 0)
			mav.setViewName("redirect:/vodboardview?bnumber="+board.getVodbnumber());
		else 
			mav.setViewName("boardv/BoardUpdateFail");
		return mav;
	}

	public ModelAndView boardDelete(int bnumber) {
		mav = new ModelAndView();
		int deleteResult = boardDAO.boardDelete(bnumber);
		if(deleteResult > 0)
			mav.setViewName("redirect:/vodboardlist");
		else 
			mav.setViewName("boardv/BoardDeleteFail");
		return mav;
	}

	
	public ModelAndView boardListPaging(int page,String type) {
		mav = new ModelAndView();
		int listCount = boardDAO.listCount();
		int startRow = (page-1)*PAGE_LIMIT + 1;
		int endRow = page*PAGE_LIMIT;
		PageDTO paging = new PageDTO();
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
			List<VODBoardDTO> boardList = boardDAO.vodboardListPaging(paging);
			// 한페이지에 글3개, 전체글 13개 -> 필요한페이지 몇개?
			int maxPage = (int)(Math.ceil((double)listCount/PAGE_LIMIT));
			int startPage = (((int)(Math.ceil((double)page/BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
			
			int endPage = startPage + BLOCK_LIMIT - 1;
			if(endPage>maxPage) { 
				endPage = maxPage; 
			}
			
			paging.setPage(page);
			paging.setStartPage(startPage);
			paging.setEndPage(endPage);
			paging.setMaxPage(maxPage);

			mav.addObject("paging", paging);
			mav.addObject("boardList", boardList);
			mav.setViewName("강의동영상");
		return mav;
	}

	public ModelAndView boardSearch(String searchtype, String keyword) {
		mav = new ModelAndView();
		List<VODBoardDTO> searchList = boardDAO.boardSearch(searchtype, keyword);
		mav.addObject("boardList", searchList);
		mav.setViewName("boardv/BoardListPaging");
		return mav;
	}

	public ModelAndView boardListbhits() {
		mav = new ModelAndView();
		List<VODBoardDTO> boardListBhits = boardDAO.boardBhits();
		mav.addObject("boardList", boardListBhits);
		mav.setViewName("boardv/BoardListPaging");
		return mav;
	}

	}


























