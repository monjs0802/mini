package com.omakase.repository;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.member.bean.KakaoDTO;

@Repository
public class KakaoMemberRepository {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void kakaoinsert(HashMap<String, Object> userInfo) {
		sqlSession.insert("Member.kakaoInsert",userInfo);
	}
	public KakaoDTO findkakao(HashMap<String, Object> userInfo) {
		System.out.println("RN:"+userInfo.get("nickname"));
		System.out.println("RE:"+userInfo.get("email"));
		return sqlSession.selectOne("Member.findKakao", userInfo);
	}
}
