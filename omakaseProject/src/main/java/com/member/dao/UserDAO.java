package com.member.dao;

import java.util.Map;

import com.member.bean.UserDTO;

public interface UserDAO {
	public void write(Map<String, Object> map);
	
	public void update(Map<String, Object> map);

	public UserDTO getMember(String id);

	public void delete(String id);

	public void login(Map<String, Object> map);

}
