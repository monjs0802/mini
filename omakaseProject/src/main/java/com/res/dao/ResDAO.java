package com.res.dao;

import java.util.List;

import com.res.bean.ResDTO;


public interface ResDAO {

	void reserve(ResDTO resDTO);

	List<ResDTO> getReserve(String resDate);
	
	public List<ResDTO> getResInfo(String resId);

	public ResDTO getOneRes(String resNum);

	public void resUpdate(ResDTO resDTO);

	public void resCancel(String resNum);
	
	List<ResDTO> getSales(String resDate); 

}
