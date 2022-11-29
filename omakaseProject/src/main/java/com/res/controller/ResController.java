package com.res.controller;

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

import com.member.bean.UserDTO;
import com.res.bean.ResDTO;
import com.res.service.ResService;

@Component
@RequestMapping(value="res")
public class ResController {
	@Autowired
	private ResService resService;
	
	@RequestMapping(value="resForm", method=RequestMethod.GET)
	public String resForm(Model model){
		model.addAttribute("display", "res/resForm.jsp");
		model.addAttribute("nav", "main/resNav.jsp");
		
		return "index2";
	}
	
	@RequestMapping(value="resExp", method=RequestMethod.GET)
	public String resExp(Model model){
		model.addAttribute("display", "res/resExp.jsp");
		model.addAttribute("nav", "main/resNav.jsp");
		
		return "index2";
	}
	
	@ResponseBody
	@PostMapping(value="reserve")
	public void reserve(@ModelAttribute ResDTO resDTO) {
		resService.reserve(resDTO);  
	}
	
	
	@ResponseBody
	@PostMapping(value="getReserve")
	public List<ResDTO> getReserve(@RequestParam String resDate) {
		return resService.getReserve(resDate);  
	}
	
	//아이디로 예약정보 찾기
	@ResponseBody
	@PostMapping(value="getResInfo")
	public List<ResDTO> getResInfo(@RequestParam String resId) {
		return resService.getResInfo(resId);  
	}
	
	//예약변경페이지 팝업
	@RequestMapping(value="resUpdateForm", method=RequestMethod.GET)
	public String resUpdateForm(@ModelAttribute UserDTO userDTO){

		return "res/resUpdateForm";
	}
	
	//resNum으로 resdto 한줄 가져오기
	@ResponseBody
	@PostMapping(value="getOneRes")
	public ResDTO getOneRes(@RequestParam String resNum) {
		return resService.getOneRes(resNum);  
	}
	
	//예약변경하기
	@ResponseBody
	@PostMapping(value="resUpdate")
	public void resUpdate(@ModelAttribute ResDTO resDTO) {
		resService.resUpdate(resDTO);  
	}
	
	//예약취소페이지
	@RequestMapping(value="resCancelForm", method=RequestMethod.GET)
	public String resCancelForm(@ModelAttribute ResDTO resDTO) {
		return "res/resCancelForm";
	}
	
	//예약취소하기
	@ResponseBody
	@PostMapping(value="resCancel")
	public void resCancel(@RequestParam String resNum) {
		resService.resCancel(resNum);  
	}
}
