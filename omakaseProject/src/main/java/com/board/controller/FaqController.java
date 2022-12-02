package com.board.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.board.bean.FaqDTO;
import com.board.dao.FaqDAO;
import com.board.service.FaqService;
import com.res.bean.ResDTO;


@Component
@Controller
@RequestMapping(value = "board/faq")
public class FaqController {
	@Autowired
	private FaqService faqService;
	
	@Autowired
	private FaqDAO faqDAO;

		
	//faq 작성폼
	@GetMapping(value = "/faqWriteForm")
	public String faqWriteForm(Model model) {
		model.addAttribute("display", "board/faq/faqWriteForm.jsp");
		model.addAttribute("nav", "main/boardNav.jsp");
		return "index2";
	}
	
	//faq 작성메소드
	@PostMapping(value = "/faqWrite")
	@ResponseBody
	public void faqWrite(@RequestParam Map<String, Object> map) {
//	public void faqWrite(@ModelAttribute FaqDTO faqDTO) {
		faqService.faqWrite(map);
	}
	
	@GetMapping(value = "/faqList")
	public String faqList(Model model, FaqDTO faqDTO) {
		model.addAttribute("display", "board/faq/faqList.jsp");
		model.addAttribute("nav", "main/boardNav.jsp");
		model.addAttribute(faqDTO);
		return "index2";
	}
	
	@PostMapping(value = "/getFaqList")
	@ResponseBody
	public List<FaqDTO> getFaqList() {
		return faqService.getFaqList();
	}	
	
	//faq 내용조회
	@GetMapping(value = "/faqViewForm")
	public String faqViewForm(Model model) {
		model.addAttribute("display", "board/faq/faqViewForm.jsp");
		model.addAttribute("nav", "main/boardNav.jsp");
		return "index2";
	}
	
	@ResponseBody
	@PostMapping(value="/getFaqseq")
	public FaqDTO getFaqseq(int faqSeq) {
		return faqService.getFaqseq(faqSeq);
	}
	
	//faq 수정하기
	@GetMapping(value = "/faqUpdateForm")
	public String faqUpdateForm(Model model) {
		model.addAttribute("display", "board/faq/faqUpdateForm.jsp");
		model.addAttribute("nav", "main/boardNav.jsp");
		return "index2";
	}
	
	@ResponseBody
	@PostMapping(value="/faqUpdate")
	public void faqUpdate(@RequestParam Map<String, Object> map) {
		faqService.faqUpdate(map);
	}

	
	@ResponseBody
	@PostMapping(value="/faqDelete")
	public void faqDelete(int faqSeq) {
		faqService.faqDelete(faqSeq);
		
	}

}
