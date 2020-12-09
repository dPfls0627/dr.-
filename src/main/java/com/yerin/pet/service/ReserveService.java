package com.yerin.pet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.yerin.pet.dao.MemberDAO;
import com.yerin.pet.dao.ProductDAO;
import com.yerin.pet.dto.MemberDTO;
import com.yerin.pet.dto.ProductDTO;
import com.yerin.pet.dto.ReserveDTO;
import com.yerin.pet.dto.ShopMemberDTO;

@Service
public class ReserveService {
	
	private ModelAndView mav;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private MemberDAO memberDAO;
	
	
	//예약 팝업창에 정보전송
	public ModelAndView MultiView(String mid,String pid,String sid) {
		mav = new ModelAndView();
		MemberDTO member = memberDAO.memberUpdate(mid);
		ProductDTO product = memberDAO.productUpdate(pid);
		ShopMemberDTO shop = memberDAO.shopUpdate(sid);
		mav.addObject("member",member);
		mav.addObject("product",product);	
		mav.addObject("shop",shop);	
		mav.setViewName("reservepop");
		return mav;
	}

	//예약정보 DB저장 후 결제 정보 전송
	
	
	public ModelAndView reserveWrite(ReserveDTO reserve) {
		mav = new ModelAndView();
		System.out.println("reserve service2 : "+reserve);
		int joinResult = productDAO.reserveWrite(reserve);
		System.out.println("reserve service3 : "+reserve);
		if(joinResult==1) {
			int reserveid = reserve.getReserveid();
			ReserveDTO reserview = productDAO.setPay(reserveid);
			mav.addObject("reserview", reserview);
			mav.setViewName("KakaoPay");
		}else {
			mav.setViewName("MemberJoinFail");
		}
		return mav;
	}
	

}
