package com.ssafy.spring.dao;

import com.ssafy.spring.vo.Value;

public interface ValueDAO {
	void insertValue(Value value);
	
	void updateValue(Value value);
	void minusValue(Value value);
	
	Value searchValue(String user_id);
}
