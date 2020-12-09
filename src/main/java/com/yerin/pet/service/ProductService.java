package com.yerin.pet.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.yerin.pet.dao.MemberDAO;
import com.yerin.pet.dao.ProductDAO;
import com.yerin.pet.dto.MemberDTO;
import com.yerin.pet.dto.ProductDTO;
import com.yerin.pet.dto.ReserveDTO;
import com.yerin.pet.dto.ShopMemberDTO;

@Service
public class ProductService {
	
	private ModelAndView mav;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	private HttpSession session;
	
	public ModelAndView reserveCheck(int reserveid) {
		mav = new ModelAndView();
		int updateResult = productDAO.reserveCheck(reserveid);
		if(updateResult == 1) {
			mav.setViewName("redirect:/adminpage");
		}else {
			mav.setViewName("ReserveCheckFail");
		}
		return mav;
	}


	public ModelAndView reserveSearch1() {
		mav = new ModelAndView();
		List<ReserveDTO> reserveSearchList = productDAO.reserveSearch1();
		List<ShopMemberDTO> shopMemberList = memberDAO.loginList();
		List<MemberDTO> memberList = memberDAO.memberList();
		List<ReserveDTO> reserveList = memberDAO.reserveList();

		mav.addObject("sMemList",shopMemberList);
		mav.addObject("memberList",memberList);
		mav.addObject("reserveList",reserveList);
		mav.addObject("reserveList",reserveSearchList);
		mav.addObject("rstate", "예약대기");
		mav.setViewName("adminpage");
		return mav;
		
	}


	public ModelAndView reserveSearch2() {
		mav = new ModelAndView();
		List<ReserveDTO> reserveSearchList = productDAO.reserveSearch2();
		List<ShopMemberDTO> shopMemberList = memberDAO.loginList();
		List<MemberDTO> memberList = memberDAO.memberList();
		List<ReserveDTO> reserveList = memberDAO.reserveList();

		mav.addObject("sMemList",shopMemberList);
		mav.addObject("memberList",memberList);
		mav.addObject("reserveList",reserveList);
		mav.addObject("reserveList",reserveSearchList);
		mav.addObject("rstate", "예약완료");
		mav.setViewName("adminpage");
		return mav;
	}

	//회원 예약리스트
	public ModelAndView memberReserveList() {
		mav = new ModelAndView();
		String mid = (String) session.getAttribute("loginId");
		List<ReserveDTO> memberReserveList = productDAO.memberReserveList(mid);
		mav.addObject("mReserveList",memberReserveList);
		mav.setViewName("mypage");
		return mav;
	}
	//상품등록
	public ModelAndView productRegistration(ProductDTO product) throws IllegalStateException, IOException {
		mav = new ModelAndView();

		MultipartFile pimgname = product.getPimgname();				
		String pimg = pimgname.getOriginalFilename();
		String savePath = "C:\\Users\\1\\Downloads\\Project\\DOGCAT\\src\\main\\webapp\\resources\\project_img\\"
						  +pimg;
		
		if(!pimgname.isEmpty()) {
			pimgname.transferTo(new File(savePath));
		}
		product.setPimg(pimg);
		
		String sid = (String) session.getAttribute("loginId");
		int shopid = productDAO.getShopId(sid);
		product.setShopid(shopid);
				
		int joinResult = productDAO.productRegistration(product);
		if (joinResult == 1) {
			String ptype= product.getPtype();
			if(ptype.equals("병원")) {				
				mav.setViewName("redirect:/hospital");
			}else {
				mav.setViewName("redirect:/shop");
			}
		}else {
			mav.setViewName("MemberJoinFail");
		}
		return mav;
	}

	//상품목록출력
	public ModelAndView productList() {
		mav = new ModelAndView();
		List<ProductDTO> productList = productDAO.productList();
		mav.addObject("productList",productList);
		mav.setViewName("hospital");
		return mav;
	}

	//상품상세출력
	public ModelAndView productView(int productid) {
		mav = new ModelAndView();
		ProductDTO product = productDAO.productView(productid);
		mav.addObject("product",product);
		mav.setViewName("productview");
		return mav;
	}
	//샵리스트
	public ModelAndView shopList() {
		mav = new ModelAndView();
		List<ProductDTO> productList = productDAO.shopList();
		mav.addObject("productList",productList);
		mav.setViewName("shop");
		return mav;
	}
	//상품등록삭제

	public ModelAndView productDelete(int productid,String ptype) {
		mav = new ModelAndView();
		int deleteResult = productDAO.productDelete(productid);
		if(ptype.equals("병원")) {
			if(deleteResult == 1) {
				mav.setViewName("redirect:/hospital");
			}else {
				mav.setViewName("ProductDelteFail");	
			}
		}else {
			if(deleteResult == 1) {
				mav.setViewName("redirect:/shop");
			}else {
				mav.setViewName("ProductDelteFail");	
			}
		}
		return mav;
	}
}
