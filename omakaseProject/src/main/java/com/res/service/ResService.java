package com.res.service;

import java.util.List;

import com.res.bean.ResDTO;

public interface ResService {

	public void reserve(ResDTO resDTO);

	public List<ResDTO> getReserve(String resDate);

	public List<ResDTO> getResInfo(String resId);

	public ResDTO getOneRes(String resNum);

	public void resUpdate(ResDTO resDTO);

	public void resCancel(String resNum);
	
	public List<ResDTO> getSales(String resDate); 
	
}
