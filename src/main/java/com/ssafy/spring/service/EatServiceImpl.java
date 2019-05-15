package com.ssafy.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ssafy.spring.dao.EatDAO;
import com.ssafy.spring.dao.FoodDAO;
import com.ssafy.spring.vo.Eat;

public class EatServiceImpl implements EatService {

	private EatDAO eatDao;
	
	@Autowired
	public void setEatDao(EatDAO eatDao) {
		this.eatDao = eatDao;
	}

	
	@Override
	public void insertEat(Eat eat) {
		System.out.println("insertEat service단까지 타고들어옴");
		eatDao.insertEat(eat);
	}


	@Override
	public void deleteEat(int eat_code) {
		eatDao.deleteEat(eat_code);
	}


}
