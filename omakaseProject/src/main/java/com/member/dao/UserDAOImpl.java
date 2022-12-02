package com.member.dao;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.member.bean.UserDTO;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public UserDTO getMember(String id) {
		return sqlSession.selectOne("memberSQL.getMember", id);
	}

	@Override
	public void update(Map<String, Object> map) {
		sqlSession.update("memberSQL.update", map);
		
	}

	@Override
	public void delete(String id) {
		sqlSession.delete("memberSQL.delete", id);
		
	}

	@Override
	public void write(Map<String, Object> map) {
		sqlSession.insert("memberSQL.write", map);	
	}

	@Override
	public UserDTO login(UserDTO userDTO) {
		return sqlSession.selectOne("memberSQL.login", userDTO);
	}




}
