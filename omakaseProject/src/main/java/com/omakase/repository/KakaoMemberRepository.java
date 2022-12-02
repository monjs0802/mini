package com.omakase.repository;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.member.bean.UserDTO;

@Repository
public class KakaoMemberRepository {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void kakaoinsert(Map<String, Object> userInfo) {
		sqlSession.insert("memberSQL.kakaoInsert",userInfo);
	}
	public UserDTO findkakao(Map<String, Object> userInfo) {
		System.out.println("RN:"+userInfo.get("nickname"));
		System.out.println("RE:"+userInfo.get("email"));

		return sqlSession.selectOne("memberSQL.findKakao", userInfo);
	}
}
