package com.member.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.member.bean.UserDTO;

public interface MemberService {
	
	public void update(Map<String, Object> map);

	public UserDTO getMember(String id);

	public void delete(String id,HttpSession session);

	public void write(Map<String, Object> map);

	public String login(UserDTO userDTO, HttpSession session);

	



}
