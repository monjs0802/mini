package com.admin.controller;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Component
@RequestMapping(value="admin")
public class AdminController {

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
}
