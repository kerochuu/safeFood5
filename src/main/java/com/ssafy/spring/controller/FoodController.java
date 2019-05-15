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
	
	
//	@PostMapping("/list.do")
//	public String getFoodList(Model model) {
//		model.addAttribute("foodList", foodService.selectFoodList());
//		return "SearchPage";
//	}
	
	@PostMapping("/list.do")
	public String getFoodList(String category, String keyword, Model model) {
		if(keyword.equals(""))
			model.addAttribute("foodList", foodService.selectFoodList());
		else {
			if(category.equals("searchByName"))
				model.addAttribute("foodList", foodService.selectFoodByName(keyword));
			else if(category.equals("searchByMaker"))
				model.addAttribute("foodList", foodService.selectFoodByMaker(keyword));
			else if(category.equals("searchByMaterial"))
				model.addAttribute("foodList", foodService.selectFoodByMaterial(keyword));
			else if(category.equals("searchByAllergy"))
				model.addAttribute("foodList", foodService.selectFoodByAllergy(keyword));
			else
				System.out.println("엘렐렐레ㅔ레레ㅔㄹ레렐레ㅔ");
		}
		return "SearchPage";
	}
	
//	@PostMapping("/searchByName.do")
//	public String searchByName(String key, Model model) {
//		model.addAttribute("foodList", foodService.selectFoodByName(key));
//		return "SearchPage";
//	}
//	
//	@PostMapping("/searchByMaker.do")
//	public String searchByMaker(String key, Model model) {
//		model.addAttribute("foodList", foodService.selectFoodByMaker(key));
//		return "SearchPage";
//	}
//	
//	@PostMapping("/searchByMaterial.do")
//	public String searchByMaterial(String key, Model model) {
//		model.addAttribute("foodList", foodService.selectFoodByMaterial(key));
//		return "SearchPage";
//	}
//	
//	@PostMapping("/searchByAllergy.do")
//	public String searchByAllergy(String key, Model model) {
//		model.addAttribute("foodList", foodService.selectFoodByAllergy(key));
//		return "SearchPage";
//	}
	
	@GetMapping("/detail.do")
	public String getDetail(int food_code, Model model) {
		foodService.plusSearchCount(food_code);
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
