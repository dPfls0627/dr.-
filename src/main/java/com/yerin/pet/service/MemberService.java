package com.yerin.pet.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonNode;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.yerin.pet.dao.MemberDAO;
import com.yerin.pet.dto.MemberDTO;
import com.yerin.pet.dto.ReserveDTO;
import com.yerin.pet.dto.ShopMemberDTO;

@Service
public class MemberService {
		
	@Autowired
	private MemberDAO memberDAO;

	@Autowired
	private HttpSession session;

	private ModelAndView mav;
	
	
	public ModelAndView shopMemberJoin(ShopMemberDTO shopMember) throws IllegalStateException, IOException {
		mav = new ModelAndView();
		
		MultipartFile sfile = shopMember.getSfile();
		String sprofile = sfile.getOriginalFilename();
		String savePath = "C:\\Users\\srk04\\Downloads\\주말빡시게 구\\DOGCAT\\src\\main\\webapp\\resources\\images\\"
						  +sprofile;
//		String savePath = "C:\\Users\\coms\\Desktop\\Team_project\\src\\main\\webapp\\resources\\project_img\\"
//				  		  +sprofile;
		
		if(!sfile.isEmpty()) {
			sfile.transferTo(new File(savePath));
		}
		shopMember.setSprofile(sprofile);
		
		int joinResult = memberDAO.shopMemberJoin(shopMember);
		if (joinResult == 1) {
			int type = memberDAO.memberLoginType(shopMember);
			shopMember.setType(type);
			mav.addObject("shopMember", shopMember);
			mav.setViewName("register_end");
		}else {
			mav.setViewName("MemberJoinFail");
		}
		return mav;
	}

	public ModelAndView memberJoin(MemberDTO member) {
		mav = new ModelAndView();
		int joinResult = memberDAO.memberJoin(member);
		if(joinResult==1) {
			int type = memberDAO.memberJoinType(member);
			member.setType(type);
			mav.addObject("member", member);
			mav.setViewName("register_end");
		}else {
			mav.setViewName("MemberJoinFail");
		}
		return mav;
	}

	public String idOverlap1(String mid) {
		String checkResult = memberDAO.idOverlap1(mid);
		String resultMag = null;
		if (checkResult == null) {
			resultMag="OK";
		}else {
			resultMag="NO";
		}
		return resultMag;
	}

	public String idOverlap2(String sid) {
		String checkResult = memberDAO.idOverlap2(sid);
		String resultMag = null;
		if (checkResult == null) {
			resultMag="OK";
		}else {
			resultMag="NO";
		}
		return resultMag;
	}

	public ModelAndView memberLogin(String mid, String mpassword) {
		mav = new ModelAndView();
		MemberDTO member = new MemberDTO();
		member.setMid(mid);
		member.setMpassword(mpassword);
		System.out.println(member.toString());
		
		String loginId = memberDAO.memberLogin(member);
		if (loginId != null) {
				int type = memberDAO.memberJoinType(member);
				session.setAttribute("loginId", loginId);
				session.setAttribute("type", type);
				mav.setViewName("index");
		}else{
			mav.setViewName("MemberLoginFail");
		}
		
		return mav;
	}

	public ModelAndView memberShopLogin(String sid, String spassword) {
		mav = new ModelAndView();
		ShopMemberDTO shopMember = new ShopMemberDTO();
		shopMember.setSid(sid);
		shopMember.setSpassword(spassword);
		
		System.out.println(shopMember.toString());
		
		String loginId = memberDAO.memberShopLogin(shopMember);
		
		if (loginId != null) {
			int type = memberDAO.memberLoginType(shopMember);
			if(type == 2) {
				session.setAttribute("loginId", loginId);
				session.setAttribute("type", type);
				mav.setViewName("index");
			}else {
				mav.setViewName("MemberLoginTypeFail");
			}
		}else{
			mav.setViewName("MemberLoginFail");
		}
		return mav;
	}

	public ModelAndView loginList() {
		mav = new ModelAndView();
		List<ShopMemberDTO> shopMemberList = memberDAO.loginList();
		List<MemberDTO> memberList = memberDAO.memberList();
		List<ReserveDTO> reserveList = memberDAO.reserveList();

		mav.addObject("sMemList",shopMemberList);
		mav.addObject("memberList",memberList);
		mav.addObject("reserveList",reserveList);
		mav.setViewName("adminpage");
		return mav;
	}

	public ModelAndView memberLoginOk(String sid) {
		mav = new ModelAndView();
		int updateResult = memberDAO.memberLoginOk(sid);
		if(updateResult == 1) {
			mav.setViewName("redirect:/adminpage");
		}else {
			mav.setViewName("MemberLoginOkFail");
		}
		return mav;
	}

	public ModelAndView memberDelete(String mid) {
		mav = new ModelAndView();
		int deleteResult = memberDAO.memberDelete(mid);
		if(deleteResult==1) {
			mav.setViewName("redirect:/adminpage");
		}else {
			mav.setViewName("MemberDeleteFail");
		}
		return mav;
	}

	public ModelAndView memberType(String loginId) {
		mav = new ModelAndView();
		
		return mav;
	}

	public ModelAndView memberUpdate(String mid) {
		mav = new ModelAndView();
		MemberDTO member = memberDAO.memberUpdate(mid);
		mav.addObject("member",member);
		mav.setViewName("memberupdate");
		return mav;
	}

	public ModelAndView memberUpdateProcess(MemberDTO member) {
		mav = new ModelAndView();
		int updateResult = memberDAO.memberUpdateProcess(member);
		if(updateResult == 1) {
			mav.setViewName("memberUpdateSuccess");
		}else {
			mav.setViewName("memberUpdateFail");
		}
		return mav;
	}

	public ModelAndView memberOut(String mid) {
		mav = new ModelAndView();
		int deleteResult = memberDAO.memberDelete(mid);
		if(deleteResult==1) {
			mav.setViewName("index");
		}else {
			mav.setViewName("MemberDeleteFail");
		}
		return mav;
	}

	public ModelAndView shopMemberDelete(String sid) {
		mav = new ModelAndView();
		int deleteResult = memberDAO.shopMemberDelete(sid);
		if(deleteResult==1) {
			mav.setViewName("redirect:/adminpage");
		}else {
			mav.setViewName("MemberDeleteFail");
		}
		return mav;
	}


	public ModelAndView kakaoLogin(JsonNode profile) {
		mav=new ModelAndView();
		String kakaoId = profile.get("id").asText();
		String loginId = memberDAO.kakaoLogin(kakaoId);	
		
		session.setAttribute("loginId", loginId);
		mav.setViewName("MemberMain");
		
		return mav;
	}
	
	public ModelAndView naverLogin(String profile) throws ParseException {
		mav = new ModelAndView();
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(profile);
		JSONObject naverUser = (JSONObject)obj;
		JSONObject userInfo = (JSONObject)naverUser.get("response");
		String naverId = (String)userInfo.get("id");
		String loginId = memberDAO.naverLogin(naverId);
		session.setAttribute("loginId", loginId);
		mav.setViewName("MemberMain");
		return mav;
	}

	
}
