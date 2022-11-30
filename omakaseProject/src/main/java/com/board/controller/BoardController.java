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
	public String noticeList(Model model) {
		model.addAttribute("display", "board/notice/noticeList.jsp");
		model.addAttribute("nav", "main/boardNav.jsp");
		return "index2";
	}

	@PostMapping(value = "/getNoticeList")
	@ResponseBody
	public List<NoticeDTO> getNoticeList() {
		return noticeService.getNoticeList();
	}
	
//	@PostMapping(value = "/getNotice")
//	@ResponseBody
//	public NoticeDTO getNotice(@RequestParam String id) {
//		return noticeService.getNotice(id);
//	}
	
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
	
	@PostMapping(value = "/delete")
	@ResponseBody
	public void delete(@RequestParam String id) {
		noticeService.delete(id);
	}
	
}
