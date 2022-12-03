package com.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.servlet.ModelAndView;

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
	//회원가입from
	@RequestMapping(value="memberWrite", method=RequestMethod.GET)
	public String memberWrite(Model model){
		model.addAttribute("display", "member/memberWrite.jsp");
		model.addAttribute("nav", "main/myPageNav.jsp");
		
		return "index2";
	}
		
	@PostMapping(value="write")   
	@ResponseBody
	public void write(@RequestParam Map<String, Object> map) {		
		memberService.write(map);
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
	
	
	//회원탈퇴form
	@RequestMapping(value="memberDelete", method=RequestMethod.GET)
	public String memberDelete(Model model){
		model.addAttribute("display", "member/memberDelete.jsp");
		model.addAttribute("nav", "main/myPageNav.jsp");
		
		return "index2";
	}
	
	@RequestMapping(value="delete")
	@ResponseBody
	public void delete(@RequestParam String id,HttpSession session) {
		memberService.delete(id,session);
	}
	

	
	@RequestMapping(value="loginForm", method=RequestMethod.GET)
	public String loginForm(Model model){
		model.addAttribute("display", "member/loginForm.jsp");
		model.addAttribute("nav", "main/myPageNav.jsp");
		
		return "index2";
	}
	
	@PostMapping(value="login")
	@ResponseBody
	public String login(@ModelAttribute UserDTO userDTO, HttpSession session) {		
		
		return memberService.login(userDTO, session);
   
	}
	
	
	
}



