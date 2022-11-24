package com.member.service;

import java.util.Map;

import com.member.bean.UserDTO;

public interface MemberService {
	
	public void update(Map<String, Object> map);

	public UserDTO getMember(String id);

	public void delete(String id);
	

}
