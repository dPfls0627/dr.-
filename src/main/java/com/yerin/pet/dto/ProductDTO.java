package com.yerin.pet.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductDTO {
	private int productid;
	private int shopid;
	private String ptype;
	private String pname;
	private String pprice;
	private String pdescrption;
	private MultipartFile pimgname;
	private String pimg;
	private String sprofile;
	
}
