package com.member.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.member.bean.UserDTO;
import com.member.service.MemberService;

@Component
@RequestMapping(value="member")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="memberInfo", method=RequestMethod.GET)
	public String memberInfo(@ModelAttribute String id, Model model){
		model.addAttribute("display", "member/memberInfo.jsp");
		model.addAttribute("nav", "main/myPageNav.jsp");
		model.addAttribute("id", id);
		return "index2";
	}
	
	
	//로그인한 id로 dto얻어오기
	@PostMapping(value="getMember") 
	@ResponseBody //리턴객체 JSON
	public UserDTO getMember(@RequestParam String id) {
		return memberService.getMember(id);

		
	};
	
	//회원정보수정from
	@RequestMapping(value="memberUpdate", method=RequestMethod.GET)
	public String memberUpdate(Model model){
		model.addAttribute("display", "member/memberUpdate.jsp");
		model.addAttribute("nav", "main/myPageNav.jsp");
		
		return "index2";
	}
	
	
	@PostMapping(value="update")   
	@ResponseBody
	public void update(@RequestParam Map<String, Object> map) {		
		memberService.update(map);
	}
	
	//회원탈퇴
	@RequestMapping(value="delete")
	@ResponseBody
	public void delete(@RequestParam String id) {
		memberService.delete(id);
	}
	
	
	

	
	@RequestMapping(value="loginForm", method=RequestMethod.GET)
	public String loginForm(Model model){
		model.addAttribute("display", "member/loginForm.jsp");
		model.addAttribute("nav", "main/myPageNav.jsp");
		
		return "index2";
	}
	
	
}



