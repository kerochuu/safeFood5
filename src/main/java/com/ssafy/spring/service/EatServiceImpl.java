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
		eatDao.insertEat(eat);
	}

	@Override
	public void updateEat(Eat eat) {
		eatDao.updateEat(eat);
	}

	@Override
	public void deleteEat(Eat eat) {
		eatDao.deleteEat(eat);
	}

	@Override
	public Eat selectEat(int eat_code) {
		return eatDao.selectEat(eat_code);
	}

	@Override
	public List<Eat> selectEatListByUser(int user_code) {
		return eatDao.selectEatListByUser(user_code);
	}

}
