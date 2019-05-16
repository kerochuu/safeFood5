package com.ssafy.spring.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.ssafy.spring.dao.JjimDAO;
import com.ssafy.spring.dao.ValueDAO;
import com.ssafy.spring.vo.Value;

public class ValueServiceImpl implements ValueService {

	private ValueDAO valueDao;
	
	@Autowired
	public void setValueDao(ValueDAO valueDao) {
		this.valueDao = valueDao;
	}
	
	@Override
	public void insertValue(Value value) {
		valueDao.insertValue(value);
	}

	@Override
	public void updateValue(Value value) {
		valueDao.updateValue(value);
	}
	@Override
	public void minusValue(Value value) {
		valueDao.updateValue(value);
	}

	@Override
	public Value searchValue(String user_id) {
		return valueDao.searchValue(user_id);
	}

}
