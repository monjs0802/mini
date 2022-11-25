package com.member.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.member.bean.UserDTO;
import com.member.dao.UserDAO;


@Service
@Transactional
public class MemberServiceImpl implements MemberService {
	@Autowired
	private UserDAO userDAO;
	
	@Override
	public void update(Map<String, Object> map) {
			//db
			userDAO.update(map);
	}

	@Override
	public UserDTO getMember(String id) {
		//db
		return userDAO.getMember(id);
	}

	@Override
	public void delete(String id) {
		userDAO.delete(id);
		
	}

	@Override
	public void write(Map<String, Object> map) {
		userDAO.write(map);
	}

	@Override
	public HashMap<String, Object> getUserInfo(String access_Token) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getAccessToken(String code) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void login(Map<String, Object> map) {
		userDAO.login(map);
		
	}

}
