package com.res.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
}
