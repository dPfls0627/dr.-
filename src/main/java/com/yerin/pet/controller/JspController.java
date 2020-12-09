package com.yerin.pet.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.yerin.pet.service.MemberService;
import com.yerin.pet.service.ProductService;

@Controller
public class JspController {

	private ModelAndView mav;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ProductService productService;
	
	
	
	@RequestMapping (value="/mypage")
	public ModelAndView goMyPage() {
		mav = productService.memberReserveList();
		return mav;
	}
	
	@RequestMapping (value="/index")
	public String goIndex() {
		return "index";
	}
	
	@RequestMapping (value="/register")
	public String goResister() {
		return "register";
	}
	
	@RequestMapping (value="/login")
	public String goLogin() {
		return "login";
	}
	
	@RequestMapping (value="/멍이냥")
	public String goIntro() {
		return "Dr.멍이냥";
	}
	
	@RequestMapping (value="/find")
	public String goFind() {
		return "find";
	}
	
	@RequestMapping (value="/hospital")
	public String goHospital() {
		return "hospital";
	}
	
	@RequestMapping (value="/memberupdate")
	public ModelAndView memberUpdate(@RequestParam("mid") String mid) {
		mav = memberService.memberUpdate(mid);
		return mav;
	}
	
	@RequestMapping (value="/productview")           
	public ModelAndView goProductView(@RequestParam("productid") int productid) {
		System.out.println("상품 번호 찍혀라 제발 쫌!!!"+productid);
		mav = productService.productView(productid);
		return mav;
	}	
	
	@RequestMapping (value="/register_end")
	public String goRegisterEnd() {
		return "resister_end";
	}
	
	@RequestMapping (value="/register_form")
	public String goRegisterForm() {
		return "register_form";
	}

	@RequestMapping (value="/register_form1")
	public String goRegisterForm1() {
		return "register_form1";
	}


	@RequestMapping (value="/shop")
	public ModelAndView goShop() {
		mav = productService.shopList();
		return mav;
	}
	
	@RequestMapping (value="/adminpage")
	public ModelAndView goAdminPage() {
		mav = memberService.loginList();
		return mav;
	}
	
	@RequestMapping (value="/contact")
	public String goContact() {
		return "contact";
	}
	
	@RequestMapping (value="/강의동영상")
	public String goVideo() {
		return "강의동영상";
	}
	
	@RequestMapping (value="/자유게시판")
	public String goFreeBoard() {
		return "자유게시판";
	}
	
	@RequestMapping (value="/공지사항")
	public String goNotice() {
		return "공지사항";
	}
	
	@RequestMapping (value="/사진갤러리")
	public String goPhoto() {
		return "사진갤러리";
	}
	
	@RequestMapping (value="/상담게시판")
	public String goQuestion() {
		return "상담게시판";
	}

	@RequestMapping (value="/글쓰기")
	public String writeForm() {
		return "글쓰기";
	}
	
	@RequestMapping (value="/게시판상세")
	public String boardView() {
		return "게시판상세";
	}







}
