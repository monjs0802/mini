package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.board.bean.NoticeDTO;
import com.board.service.NoticeService;

@Component
@RequestMapping(value = "board/notice")
public class BoardController {
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(value = "/noticeWriteForm")
	public String noticeWriteForm(Model model) {
		model.addAttribute("display", "board/notice/noticeWriteForm.jsp");
		model.addAttribute("nav", "main/boardNav.jsp");
		return "index2";
	}

	@PostMapping(value = "/noticeWrite")
	@ResponseBody
	public void noticeWrite(@ModelAttribute NoticeDTO noticeDTO) {
		noticeService.noticeWrite(noticeDTO);
	}

	@RequestMapping(value = "/noticeList")
	public String noticeList(Model model, @RequestParam int pg) {
		model.addAttribute("display", "board/notice/noticeList.jsp");
		model.addAttribute("nav", "main/boardNav.jsp");
		model.addAttribute("pg", pg);
		return "index2";
	}

	@PostMapping(value = "/getNoticeList")
	@ResponseBody
	public List<NoticeDTO> getNoticeList() {
		return noticeService.getNoticeList();
	}
	
	@RequestMapping(value = "/noticeView")
	public String noticeView(Model model, @RequestParam int notSeq) {
		model.addAttribute("display", "board/notice/noticeView.jsp");
		model.addAttribute("nav", "main/boardNav.jsp");
		model.addAttribute("notSeq", notSeq);
		return "index2";
	}
	
	@PostMapping(value = "/getNoticeView")
	@ResponseBody
	public NoticeDTO getNoticeView(@RequestParam int notSeq) {
		System.out.println(notSeq);
		return noticeService.getNoticeView(notSeq);
	}
	
	@RequestMapping(value = "/noticeUpdateForm")
	public String noticeUpdateForm(Model model, @RequestParam int notSeq) {
		model.addAttribute("display", "board/notice/noticeUpdateForm.jsp");
		model.addAttribute("nav", "main/boardNav.jsp");
		model.addAttribute("notSeq", notSeq);
		return "index2";
	}
	
	@PostMapping(value = "/getNoticeUpdate")
	@ResponseBody
	public void getNoticeUpdate(@ModelAttribute NoticeDTO noticeDTO) {
		noticeService.getNoticeUpdate(noticeDTO);
	}
	
	@PostMapping(value = "/noticeDelete")
	@ResponseBody
	public void noticeDelete(@RequestParam int notSeq) {
		noticeService.noticeDelete(notSeq);
	}
	
	@RequestMapping(value = "/getIndexNotice")
	@ResponseBody
	public List<NoticeDTO> getIndexNotice() {		
		return noticeService.getIndexNotice();
	} //추가부분
	
}