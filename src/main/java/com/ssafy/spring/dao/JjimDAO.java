package com.ssafy.spring.dao;

import java.util.List;

import com.ssafy.spring.vo.Eat;
import com.ssafy.spring.vo.Jjim;


public interface JjimDAO {
	void insertJjim(Jjim jjim);
	
	void deleteJjim(int jjim_code);
	
}
