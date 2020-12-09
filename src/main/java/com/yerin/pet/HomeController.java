package com.yerin.pet;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yerin.pet.dto.HashtagDTO;
import com.yerin.pet.dto.PTBoardDTO;
import com.yerin.pet.service.HashtagService;
import com.yerin.pet.service.BoardService.PTBoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private PTBoardService boardService;
	
	@Autowired
	private HashtagService hashtagService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		List<PTBoardDTO> boardView = boardService.boardList();
		List<HashtagDTO> hashtagList = hashtagService.hashtagList();
		System.out.println(hashtagList+"여기야");
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("boardView", boardView );
		model.addAttribute("hashtagList", hashtagList );
		
		return "index";
	}
	
}
