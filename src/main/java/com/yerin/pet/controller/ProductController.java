package com.yerin.pet.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.yerin.pet.dto.CommentDTO;
import com.yerin.pet.dto.DTBoardDTO;
import com.yerin.pet.dto.ProductDTO;
import com.yerin.pet.dto.ReserveDTO;
import com.yerin.pet.service.ProductService;
import com.yerin.pet.service.ReserveService;

@Controller
public class ProductController {
    private ModelAndView mav;
	
	@Autowired
	private ProductService productService;
	@Autowired
	private ReserveService reserveService;
	
	@RequestMapping(value="/reservecheck")
	public ModelAndView reserveCheck(@RequestParam("reserveid") int reserveid) {
		mav = productService.reserveCheck(reserveid);
		return mav;
	}
	
	@RequestMapping(value="/reservesearch")
	public ModelAndView reserveSearch(@RequestParam("searchtype") String searchType) {
		if (searchType.equals("reserveWait")) {
			mav = productService.reserveSearch1();			
		}else {
			mav = productService.reserveSearch2();
		}
		return mav;
	}
	//상품등록
	@RequestMapping(value="/productregistration")
	public ModelAndView productRegistration(@ModelAttribute ProductDTO product) throws IllegalStateException, IOException {
		mav = productService.productRegistration(product);
		return mav;
	}
	
	//상품삭제
	@RequestMapping(value="/productdelete")
	public ModelAndView productDelete(@RequestParam("productid") int productid, @RequestParam("ptype") String ptype) {
		mav = productService.productDelete(productid,ptype);
		return mav;
	}
	
	//예약팝업창 정보전송
	
	@RequestMapping (value="/reservepop")
	public ModelAndView reservePop(@RequestParam("mid") String mid,@RequestParam("pid") String pid
			,@RequestParam("sid") String sid) {
		
		mav = reserveService.MultiView(mid,pid,sid);
		return mav;
	}

	//예약정보 저장 결제정보 전송
	@RequestMapping (value="/kakaopay")
	public ModelAndView reservedata(@ModelAttribute ReserveDTO reserve) throws IllegalStateException, IOException {
		System.out.println("reserve : "+reserve);
		mav = reserveService.reserveWrite(reserve);
		return mav;
	}
	
	
	
}
