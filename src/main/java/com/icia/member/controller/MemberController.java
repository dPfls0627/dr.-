package com.icia.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService MemberService;
	
	private ModelAndView mav;
	
	@RequestMapping(value="/")
	public String home() {
		return "home";
	}
	
	@RequestMapping(value="/memberjoinform")
	public String joinform() {
		return "JoinForm";
	}
	@RequestMapping(value="/memberloginform")
	public String loginform() {
		return "LoginForm";
	}
	
	//회원가입
	@RequestMapping(value="/memberjoin")
	public ModelAndView memberjoin(@ModelAttribute MemberDTO member) {
		//값제대로오는지 확인용 System.out.println(member.toString());
		mav=MemberService.memberjoin(member);		
		return mav;
	}
	
	//로그인
	@RequestMapping(value="/memberlogin")
//	public ModelAndView memberlogin=(@RequestParam("mid"),@RequestParam("mpassword")){
	public ModelAndView memberlogin(@ModelAttribute MemberDTO member){
		mav = MemberService.memberLogin(member);
		return mav;
	}
	//회원 목록 조회
	@RequestMapping(value="/memberlist")
	public ModelAndView memberList() {
		mav = MemberService.memberList();
		return mav;
	}
	//상세 조회
	@RequestMapping(value="/memberview")
	public ModelAndView memberView(@RequestParam("mid") String mid) {
		mav = MemberService.memberView(mid);
		return mav;
	}
	//power 삭 제 
		@RequestMapping(value="/memberdelete")
		public ModelAndView memberDelete(@RequestParam("mid") String mid) {
			mav = MemberService.memberDelete(mid);
			return mav;
		}
}
	
	


