package com.icia.member.controller;



import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.member.api.KakaoJoinApi;
import com.icia.member.api.KakaoLoginApi;
import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService MemberService;
	
	private ModelAndView mav;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private KakaoJoinApi kakaoJoinApi;
	
	@Autowired
	private KakaoLoginApi kakaoLoginApi;
	
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
		//회원 수정	 정보표시
		@RequestMapping(value="/membershow")
		public ModelAndView memberShow(@RequestParam("mid") String mid) {
			mav = MemberService.memberShow(mid);
			return mav;
			//세션방식으로 하는걸 추천
		}
	//회원 수정	
		@RequestMapping(value="/memberupdate")
		public ModelAndView memberUpdate(@ModelAttribute MemberDTO member) {
			mav = MemberService.memberUpdate(member);
			return mav;
		}
		//아이디 중복확인
		//@ResponseBody 리턴을 텍스트로보냄 (주소로가지않음)
		@RequestMapping(value="/idoverlap")
		public @ResponseBody String idOverlap(@RequestParam("mid") String mid) {
			System.out.println("전달받은값"+mid);
			String ResultMsg = MemberService.idOverlap(mid);
			return ResultMsg;
		}
		@RequestMapping(value="/memberviewajax")
		public @ResponseBody MemberDTO memberViewAjax(@RequestParam("mid") String mid) {
			System.out.println("전달받은값"+mid);
			MemberDTO memberView = MemberService.memberViewAjax(mid);
			return memberView;
		}
		
		@RequestMapping(value="/memberlogout")
		public String memberLogout() {
			session.invalidate();
			return "LoginForm";
		}
		//카카오 서버 로그인 
		@RequestMapping(value="/kakaojoin")
		public ModelAndView kakaoJoin(HttpSession session) {
			String kakaoUrl = kakaoJoinApi.getAuthorizationUrl(session);
			mav = new ModelAndView();
			mav.addObject("kakaoUrl",kakaoUrl);
			mav.setViewName("KakaoLogin");
			return mav;
		}
		//카카오 서버 인증 통과후 처리
		@RequestMapping(value="/kakaojoinok")
		public ModelAndView kakaoJoinOK(@RequestParam("code") String code,
				HttpSession session) {
		JsonNode token = kakaoJoinApi.getAccessToken(code);
		JsonNode profile = kakaoJoinApi.getKakaoUserInfo(token.path("access_token"));
		System.out.println("profile"+profile);
		String kakaoId = profile.get("id").asText();
		mav = new ModelAndView();
		mav.addObject("kakaoId",kakaoId);
		mav.setViewName("JoinForm");
		
		return mav;
		}
		//카카오 로그인
		@RequestMapping(value="/kakaologin")
		public ModelAndView kakaoLogin(HttpSession session) {
			String kakaoUrl = kakaoJoinApi.getAuthorizationUrl(session);
			mav = new ModelAndView();
			mav.addObject("kakaoUrl",kakaoUrl);
			mav.setViewName("KakaoLogin");
			return mav;
		}
		
		@RequestMapping(value="/kakaologinok")
		public ModelAndView kakaoLoginOK(@RequestParam("code") String code){
			JsonNode token = kakaoLoginApi.getAccessToken(code);
			JsonNode profile = kakaoLoginApi.getKakaoUserInfo(token.path("access_token"));
			/* mav = new ModelAndView(); */
			mav = MemberService.kakaoLogin(profile);
			return mav;
		}
		
}



