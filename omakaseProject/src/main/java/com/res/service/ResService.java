package com.res.service;

import java.util.List;

import com.res.bean.ResDTO;

public interface ResService {

	public void reserve(ResDTO resDTO);

	public List<ResDTO> getReserve(String resDate);

}
