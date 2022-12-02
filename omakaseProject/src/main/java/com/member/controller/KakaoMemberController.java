package com.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.member.bean.UserDTO;
import com.member.service.KakaoMemberService;

@Controller
@RequestMapping(value="/member/*")
public class KakaoMemberController {
	
	@Autowired
	private KakaoMemberService kakaoMemberService;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping(value="/kakaoLogin", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code) throws Exception {
		System.out.println("#########" + code);
		String access_Token = kakaoMemberService.getAccessToken(code);
		
		UserDTO userInfo = kakaoMemberService.getUserInfo(access_Token);
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###nickname#### : " + userInfo.getName());
		System.out.println("###email#### : " + userInfo.getEmail());
	
		session.invalidate();
		// 위 코드는 session객체에 담긴 정보를 초기화 하는 코드.
		session.setAttribute("memId", userInfo.getName());
		session.setAttribute("kakaoE", userInfo.getEmail());
		
		// 위 2개의 코드는 닉네임과 이메일을 session객체에 담는 코드
		// jsp에서 ${sessionScope.kakaoN} 이런 형식으로 사용할 수 있다.
	    
	    // 리턴값은 용도에 맞게 변경하세요~
		return "/index";
    	}

}
