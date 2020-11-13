package com.yerin.pet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberViewController {

	@RequestMapping (value="/mypage")
	public String joinForm() {
		return "mypage";
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
	
	@RequestMapping (value="/intro")
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
	
	@RequestMapping (value="/memberupdateform")
	public String goMemberUpdateForm() {
		return "memberupdate";
	}
	
	@RequestMapping (value="/productview")
	public String goProductView() {
		return "productview";
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
	public String goShop() {
		return "shop";
	}
	
	@RequestMapping (value="/adminpage")
	public String goAdminPage() {
		return "adminpage";
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
	
	@RequestMapping (value="/reservepop")
	public String reservePop() {
		String jsp = "reserve/reservepop";
		return jsp;
	}







}
