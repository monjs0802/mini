package com.member.service;

import java.util.HashMap;
import java.util.Map;

import com.member.bean.UserDTO;

public interface MemberService {
	
	public void update(Map<String, Object> map);

	public UserDTO getMember(String id);

	public void delete(String id);

	public void write(Map<String, Object> map);

	public HashMap<String, Object> getUserInfo(String access_Token);

	public String getAccessToken(String code);

	public void login(Map<String, Object> map);



}
