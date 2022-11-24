package com.res.dao;

import java.util.List;

import com.res.bean.ResDTO;


public interface ResDAO {

	void reserve(ResDTO resDTO);

	List<ResDTO> getReserve(String resDate);

}
