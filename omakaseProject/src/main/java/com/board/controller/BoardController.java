package com.board.controller;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Component
@RequestMapping(value="board")
public class BoardController {
	
	@RequestMapping(value="noticeBoard", method=RequestMethod.GET)
	public String index(Model model){
		model.addAttribute("display", "board/noticeBoard.jsp");
		model.addAttribute("nav", "main/boardNav.jsp");
		
		return "index2";
	}
}
