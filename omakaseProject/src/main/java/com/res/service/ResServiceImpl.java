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

	@Override
	public List<ResDTO> getResInfo(String resId) {
		return resDAO.getResInfo(resId);
	}

	@Override
	public ResDTO getOneRes(String resNum) {
		return resDAO.getOneRes(resNum);
	}

	@Override
	public void resUpdate(ResDTO resDTO) {
		resDAO.resUpdate(resDTO);
		
	}

	@Override
	public void resCancel(String resNum) {
		resDAO.resCancel(resNum);
		
	}
	
	@Override
	public List<ResDTO> getSales(String resDate) {
		return resDAO.getSales(resDate); 
		
		
	}
}
