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
import com.yerin.pet.dao.BaordDao.PTBoardDAO;
import com.yerin.pet.dto.CommentDTO;
import com.yerin.pet.dto.DTBoardDTO;
import com.yerin.pet.dto.FREEBoardDTO;
import com.yerin.pet.dto.HashtagDTO;
import com.yerin.pet.dto.NTBoardDTO;
import com.yerin.pet.dto.PTBoardDTO;
import com.yerin.pet.dto.PageDTO;
import com.yerin.pet.dto.VODBoardDTO;

@Service
public class PTBoardService {
	
	@Autowired
	private PTBoardDAO boardDAO;
	
	@Autowired
	private CommentDAO commentDAO;
	
	private ModelAndView mav;
	
	private static final int PAGE_LIMIT = 10;
	private static final int BLOCK_LIMIT = 14;
	
	public ModelAndView boardWriteFile(PTBoardDTO board) {
		mav = new ModelAndView();
		int writeResult = boardDAO.boardWriteFile(board);
		if(writeResult > 0)
			mav.setViewName("redirect:/ptboardlist");
		else 
			mav.setViewName("BoardWriteFail");
		return mav;
	}
	
	public ModelAndView boardView(int bnumber, int page) {
		mav = new ModelAndView();
		boardDAO.boardHits(bnumber);
		PTBoardDTO boardView = boardDAO.boardView(bnumber);
		
		List<CommentDTO> commentList = commentDAO.commentList(bnumber);
		
		mav.addObject("page", page);
		mav.addObject("boardView", boardView);
		mav.addObject("commentList", commentList);
		mav.setViewName("boardview/ptview");
		return mav;
	}

	public ModelAndView boardUpdate(int bnumber) {
		mav = new ModelAndView();
		PTBoardDTO boardUpdate = boardDAO.boardView(bnumber);
		mav.addObject("boardUpdate", boardUpdate);
		mav.setViewName("boardup/ptviewup");
		return mav;
	}
	
	public ModelAndView boardHashtag() {
		mav = new ModelAndView();
		List<HashtagDTO> hashtagList = boardDAO.boardHashtag();
		mav.addObject("hashtagList", hashtagList);
		mav.setViewName("boardwrite/ptboard");
		return mav;
	}

	public ModelAndView boardUpdateProcess(PTBoardDTO board) {
		mav = new ModelAndView();
		int updateResult = boardDAO.boardUpdate(board);
		if(updateResult > 0)
			mav.setViewName("redirect:/ptboardview?bnumber="+board.getPtbnumber());
		else 
			mav.setViewName("boardv/BoardUpdateFail");
		return mav; 
	}

	public ModelAndView boardDelete(int bnumber) {
		mav = new ModelAndView();
		int deleteResult = boardDAO.boardDelete(bnumber);
		if(deleteResult > 0)
			mav.setViewName("redirect:/ptboardlist");
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
		
		List<PTBoardDTO> boardList = boardDAO.ptboardListPaging(paging);
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
			mav.setViewName("사진갤러리");
			
		return mav;
	}

	public ModelAndView boardSearch(String searchtype, String keyword) {
		mav = new ModelAndView();
		List<PTBoardDTO> searchList = boardDAO.boardSearch(searchtype, keyword);
		mav.addObject("boardList", searchList);
		mav.setViewName("boardv/BoardListPaging");
		return mav;
	}

	public ModelAndView boardListbhits() {
		mav = new ModelAndView();
		List<PTBoardDTO> boardListBhits = boardDAO.boardBhits();
		mav.addObject("boardList", boardListBhits);
		mav.setViewName("boardv/BoardListPaging");
		return mav;
	}

	public List<PTBoardDTO> boardList() {
			List<PTBoardDTO> boardList = boardDAO.ptboardList();
			return boardList;
		}
	

	}


























