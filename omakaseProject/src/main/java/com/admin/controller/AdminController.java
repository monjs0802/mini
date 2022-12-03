package com.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.res.bean.ResDTO;
import com.res.service.ResService;

@Component
@RequestMapping(value="admin")
public class AdminController {
	@Autowired
	private ResService resService;

	@RequestMapping(value="adminRes", method=RequestMethod.GET)
	public String adminRes(Model model){
		model.addAttribute("display", "admin/adminRes.jsp");
		model.addAttribute("nav", "main/adminNav.jsp");
		
		return "index2";
	}
	
	@RequestMapping(value="adminSales", method=RequestMethod.GET)
	public String adminSales(Model model){
		model.addAttribute("display", "admin/adminSales.jsp");
		model.addAttribute("nav", "main/adminNav.jsp");
		
		return "index2";
	}
	
	@ResponseBody
	@PostMapping(value="getSales")
	public List<ResDTO> getSales(@RequestParam String resDate) {
		return resService.getSales(resDate);  
	} //매출현황 추가부분
}

