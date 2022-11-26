package com.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.board.bean.NoticeDTO;
import com.board.service.NoticeService;
import com.res.bean.ResDTO;

@Component
@RequestMapping(value="board")
public class BoardController {
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(value="noticeBoard", method=RequestMethod.GET)
	public String index(Model model){
		model.addAttribute("display", "board/noticeBoard.jsp");
		model.addAttribute("nav", "main/boardNav.jsp");
		
		return "index2";
	}
	
	@RequestMapping(value = "notice/noticeList", method=RequestMethod.GET)
	public String noticeList(Model model) {
		model.addAttribute("display", "board/notice/noticeList.jsp");
		model.addAttribute("nav", "main/boardNav.jsp");
		
		return "index2";
	}
	
//	@PostMapping(value = "notice/getNoticeList")
//	@ResponseBody
//	public List<NoticeDTO> getNoticeList() {
//		return noticeService.getNoticeList();
//	}
	
	@GetMapping(value = "notice/noticeWriteForm")
	public String noticeWriteForm(Model model) {
		model.addAttribute("display", "board/notice/noticeWriteForm.jsp");
		model.addAttribute("nav", "main/boardNav.jsp");
		
		return "index2";
	}
	
	@PostMapping(value = "notice/noticeWrite")
	@ResponseBody
	public String noticeWrite(@ModelAttribute NoticeDTO noticeDTO) {
		noticeService.noticeWrite(noticeDTO);
		
		return "index2";
	}
}
