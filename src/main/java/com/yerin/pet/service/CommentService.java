package com.yerin.pet.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yerin.pet.dao.CommentDAO;
import com.yerin.pet.dto.CommentDTO;

@Service
public class CommentService {
	
	@Autowired
	private CommentDAO commentDAO;
	//등록 
	public int commentWrite(CommentDTO comment) {
		int writeResult = commentDAO.commentWrite(comment);
		return writeResult;
	}
	//출력
	public List<CommentDTO> commentList(CommentDTO comment) {
		List<CommentDTO> commentList = new ArrayList<CommentDTO>();
		String bnum =  Integer.toString(comment.getCbnumber());
		String btype = comment.getBtype();
			commentList = commentDAO.commentList(bnum,btype);	
		return commentList;
	}
	//삭제
	public int commentDelete(int cbnumber) {
		int DeleteResult = commentDAO.commentDelete(cbnumber);

		return DeleteResult;
	}
	public String reserveLoad(String mname, int productid) {
		String checkResult = commentDAO.reserveLoad(mname, productid);
		String resultMag = null;
		if (checkResult != null) {
			resultMag="OK";
		}else {
			resultMag="NO";
		}
		return resultMag;
	}
	
}










