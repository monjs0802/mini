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

	@Override
	public List<ResDTO> getResInfo(String resId) {
		return sqlSession.selectList("resSQL.getResInfo", resId);
	}

	@Override
	public ResDTO getOneRes(String resNum) {
		return sqlSession.selectOne("resSQL.getOneRes", resNum);
	
	}

	@Override
	public void resUpdate(ResDTO resDTO) {
		sqlSession.insert("resSQL.resUpdate", resDTO);
		
	}

	@Override
	public void resCancel(String resNum) {
		sqlSession.delete("resSQL.resCancel", resNum);
		
	}
	
	@Override
	public List<ResDTO> getSales(String resDate) {
		return sqlSession.selectList("resSQL.getSales", resDate);
		
		
	} 

	
	
}
