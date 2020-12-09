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
import com.yerin.pet.dao.BaordDao.NTBoardDAO;
import com.yerin.pet.dto.CommentDTO;
import com.yerin.pet.dto.DTBoardDTO;
import com.yerin.pet.dto.FREEBoardDTO;
import com.yerin.pet.dto.NTBoardDTO;
import com.yerin.pet.dto.PTBoardDTO;
import com.yerin.pet.dto.PageDTO;
import com.yerin.pet.dto.VODBoardDTO;

@Service
public class NTBoardService {
	
	@Autowired
	private NTBoardDAO boardDAO;
	
	@Autowired
	private CommentDAO commentDAO;
	
	private ModelAndView mav;
	
	private static final int PAGE_LIMIT = 10;
	private static final int BLOCK_LIMIT = 14;
	
	public ModelAndView boardWrite(NTBoardDTO board) {
		mav = new ModelAndView();
		int writeResult = boardDAO.boardWriteFile(board);
		if(writeResult > 0)
			mav.setViewName("redirect:/ntboardlist");
		else 
			mav.setViewName("BoardWriteFail");
		return mav;
	}
	
	public ModelAndView boardView(int bnumber, int page) {
		mav = new ModelAndView();
		boardDAO.boardHits(bnumber);
		NTBoardDTO boardView = boardDAO.boardView(bnumber);
		
		List<CommentDTO> commentList = commentDAO.commentList(bnumber);
		
		mav.addObject("page", page);
		mav.addObject("boardView", boardView);
		mav.addObject("commentList", commentList);
		mav.setViewName("boardview/ntview");
		return mav;
	}

	public ModelAndView boardUpdate(int bnumber) {
		mav = new ModelAndView();
		NTBoardDTO boardUpdate = boardDAO.boardView(bnumber);
		mav.addObject("boardUpdate", boardUpdate);
		mav.setViewName("boardup/ntviewup");
		return mav;
	}

	public ModelAndView boardUpdateProcess(NTBoardDTO board) {
		mav = new ModelAndView();;
		int updateResult = boardDAO.boardUpdate(board);
		if(updateResult > 0)
			mav.setViewName("redirect:/ntboardview?bnumber="+board.getNtbnumber());
		else 
			mav.setViewName("boardv/BoardUpdateFail");
		return mav;
	}

	public ModelAndView boardDelete(int bnumber) {
		mav = new ModelAndView();
		int deleteResult = boardDAO.boardDelete(bnumber);
		if(deleteResult > 0)
			mav.setViewName("redirect:/ntboardlist");
		else 
			mav.setViewName("boardv/BoardDeleteFail");
		return mav;
	}
// 기본글쓰기로 변경 스마트에디터 2이용
//	public ModelAndView boardWriteFile(NTBoardDTO board) throws IllegalStateException, IOException {
//		mav = new ModelAndView();
//		MultipartFile bfile = board.getBfile();
//		String bfilename = bfile.getOriginalFilename();
//		
//		String savePath = "D:\\source\\Spring\\MemberBoard\\src\\main\\webapp\\resources\\img\\"+bfilename;
//		
//		if(!bfile.isEmpty()) {
//			bfile.transferTo(new File(savePath));
//		}
//		board.setBfilename(bfilename);
//		int writeResult = boardDAO.boardWriteFile(board);
//		if(writeResult > 0)
//			mav.setViewName("redirect:/boardlistpaging");
//		else
//			mav.setViewName("boardv/BoardWriteFileFail");
//		
//		return mav;
//	}
	
	public ModelAndView boardListPaging(int page) {
		mav = new ModelAndView();
		int listCount = boardDAO.listCount();
		int startRow = (page-1)*PAGE_LIMIT + 1;
		int endRow = page*PAGE_LIMIT;
		
		PageDTO paging = new PageDTO();
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
			List<NTBoardDTO> boardList = boardDAO.ntboardListPaging(paging);
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
		    System.out.println(boardList +"여기야");
			mav.addObject("paging", paging);
			mav.addObject("boardList", boardList);
			mav.setViewName("공지사항");

		return mav;
	}

	
	
	public ModelAndView boardSearch(String searchtype, String keyword) {
		mav = new ModelAndView();
		List<NTBoardDTO> searchList = boardDAO.boardSearch(searchtype, keyword);
		mav.addObject("boardList", searchList);
		mav.setViewName("boardv/BoardListPaging");
		return mav;
	}

	public ModelAndView boardListbhits() {
		mav = new ModelAndView();
		List<NTBoardDTO> boardListBhits = boardDAO.boardBhits();
		mav.addObject("boardList", boardListBhits);
		mav.setViewName("boardv/BoardListPaging");
		return mav;
	}

	}


























