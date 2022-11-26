package com.res.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.res.bean.ResDTO;

@Repository
@Transactional
public class ResDAOMyBatis implements ResDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void reserve(ResDTO resDTO) {
		sqlSession.insert("resSQL.reserve", resDTO);
	}
	
	@Override
	public List<ResDTO> getReserve(String resDate) {
		return sqlSession.selectList("resSQL.getReserve", resDate);
	}
}
