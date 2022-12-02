package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.board.bean.NoticeDTO;
import com.board.service.NoticeService;

@Component
@RequestMapping(value = "board/notice")
public class BoardController {
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping(value = "/noticeWriteForm")
	public String noticeWriteForm() {
		return "/board/notice/noticeWriteForm";
	}

	@PostMapping(value = "/noticeWrite")
	@ResponseBody
	public void noticeWrite(@ModelAttribute NoticeDTO noticeDTO) {
		noticeService.noticeWrite(noticeDTO);
	}

	@RequestMapping(value = "/noticeList", method=RequestMethod.GET)
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
	
	@GetMapping(value = "/noticeUpdateForm")
	public String noticeUpdateForm() {
		return "/board/notice/noticeUpdateForm";
	}
	
	@PostMapping(value = "/update")
	@ResponseBody
	public void update(@ModelAttribute NoticeDTO noticeDTO) {
		noticeService.update(noticeDTO);
	}
	
	@GetMapping(value = "/noticeDeleteForm")
	public String noticeDeleteForm() {
		return "/board/notice/noticeDeleteForm";
	}
	
	@PostMapping(value = "/noticeDelete")
	@ResponseBody
	public void delete(@RequestParam String id) {
		noticeService.delete(id);
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
		return noticeService.getNoticeView(notSeq);
	}
}
