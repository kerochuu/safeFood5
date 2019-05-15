package com.ssafy.spring.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.ssafy.spring.dao.EatDAO;
import com.ssafy.spring.dao.JjimDAO;
import com.ssafy.spring.vo.Jjim;

public class JjimServiceImpl implements JjimService {

	
	private JjimDAO jjimDao;
	
	@Autowired
	public void setJjimDao(JjimDAO jjimDao) {
		this.jjimDao = jjimDao;
	}

	@Override
	public void insertJjim(Jjim jjim) {
		jjimDao.insertJjim(jjim);
	}

	@Override
	public void deleteJjim(int jjim_code) {
		jjimDao.deleteJjim(jjim_code);
	}

}
