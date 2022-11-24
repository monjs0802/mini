package com.main.spring;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Component
@Controller
public class MainController {
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String index(){
		return "index";
	}
	
	@RequestMapping(value="/index2", method=RequestMethod.GET)
	public String index2(){
		return "index2";
	}

}
