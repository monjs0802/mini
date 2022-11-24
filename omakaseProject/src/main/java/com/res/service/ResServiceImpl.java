package com.res.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.res.bean.ResDTO;
import com.res.dao.ResDAO;

@Service
@Transactional
public class ResServiceImpl implements ResService {
	@Autowired
	private ResDAO resDAO;

	@Override
	public void reserve(ResDTO resDTO) {
		resDAO.reserve(resDTO);
	}
	
	@Override
	public List<ResDTO> getReserve(String resDate) {
		return resDAO.getReserve(resDate);
	}
}
