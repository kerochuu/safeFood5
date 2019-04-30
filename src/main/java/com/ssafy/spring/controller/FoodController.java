package com.ssafy.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssafy.spring.service.FoodService;
import com.ssafy.spring.vo.Food;



@RequestMapping("/food")
@Controller
public class FoodController {

	FoodService foodService;
	
	@Autowired
	public void setFoodService(FoodService foodService) {
		this.foodService = foodService;
	}
	
	@PostMapping("/list.do")
	public String getFoodList(Model model) {
		model.addAttribute("foodList", foodService.selectFoodList());
		return "SearchPage";
	}
	
	@GetMapping("/detail.do")
	public String getDetail(int food_code, Model model) {
		model.addAttribute("food", foodService.selectFood(food_code));
		return "DetailPage";
	}
	
	@GetMapping("/main.do")
	public String getMain() {
		return "MainPage";
	}
	
	@GetMapping("/SearchPage.do")
	public String getSearchPage(Model model) {
		model.addAttribute("foodList", foodService.selectFoodList());
		return "SearchPage";
	}
	
	
	


}
