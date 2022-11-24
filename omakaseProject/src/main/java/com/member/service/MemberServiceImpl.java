package com.member.service;

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




}
