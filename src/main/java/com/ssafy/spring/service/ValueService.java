package com.ssafy.spring.service;

import com.ssafy.spring.vo.Value;

public interface ValueService {
	void insertValue(Value value);
	
	void updateValue(Value value);
	void minusValue(Value value);
	
	Value searchValue(String user_id);
}
