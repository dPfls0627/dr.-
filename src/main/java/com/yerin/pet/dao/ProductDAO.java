package com.yerin.pet.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yerin.pet.dto.FREEBoardDTO;
import com.yerin.pet.dto.ProductDTO;
import com.yerin.pet.dto.ReserveDTO;
import com.yerin.pet.dto.ShopMemberDTO;

@Repository
public class ProductDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	public int reserveCheck(int reserveid) {
		return sql.update("Product.reserveCheck",reserveid);
	}

	public List<ReserveDTO> reserveSearch1() {
		return sql.selectList("Product.reserveSearch1");
	}

	public List<ReserveDTO> reserveSearch2() {
		return sql.selectList("Product.reserveSearch2");
	}

	public List<ReserveDTO> memberReserveList(String mid) {
		return sql.selectList("Product.memberReserveList",mid);
	}
	
	public int reserveWrite(ReserveDTO reserve) {
		return sql.insert("Product.reservewrite", reserve);        
	}
	
	public ReserveDTO setPay(int reserveid) {
		return sql.selectOne("Product.setpay", reserveid);
	}

	public int getShopId(String sid) {
		return sql.selectOne("Product.getShopId",sid);
	}

	public int productRegistration(ProductDTO product) {
		return sql.insert("Product.productRegistration",product);
	}

	public List<ProductDTO> productList() {
		return sql.selectList("Product.productList");
	}
	//상품출력
	public ProductDTO productView(int productid) {
		return sql.selectOne("Product.productView",productid);
	}
	//숍리스트
	public List<ProductDTO> shopList() {
		return sql.selectList("Product.shopList");
	}
	//상품삭제
	public int productDelete(int productid) {
		return sql.delete("Product.productDelete",productid);
	}
}

