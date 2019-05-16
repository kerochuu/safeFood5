package com.ssafy.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.AlternativeJdkIdGenerator;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssafy.spring.service.EatService;
import com.ssafy.spring.service.FoodService;
import com.ssafy.spring.service.UserService;
import com.ssafy.spring.vo.User;



@RequestMapping("/user")
@Controller
public class UserController {

	UserService userService;
	FoodService foodService;
	EatService eatService;
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	@Autowired
	public void setFoodService(FoodService foodService) {
		this.foodService = foodService;
	}
	@Autowired
	public void setEatService(EatService eatService) {
		this.eatService = eatService;
	}
	
	@PostMapping("/login.do")
	public String login(HttpSession session,String id,String pw, Model model) {
		User user = userService.searchById(id);
		if(user!=null && user.getUser_pw().equals(pw)) {
			session.setAttribute("userId", id);
			model.addAttribute("bestfood", foodService.selectBestFood());
			return "MainPage";
		}
		
		return "redirect:/index.jsp";
		
	}
	@GetMapping("/logout.do")
	public String login(HttpSession session) {
		session.invalidate();
		return "redirect:/index.jsp";
	}
	

	@PostMapping("/insertUser.do")
	public String insertUser(User user) {
		System.out.println("searchById = " + userService.searchById(user.getUser_id()));
		if(userService.searchById(user.getUser_id()) == null) {
			System.out.println("11");
			if(userService.searchByCode(user.getUser_Code()) == null) {
				System.out.println("22");
				if(userService.insertUser(user)) {
					System.out.println("33");
					return "redirect:/index.jsp";
				}	
			}
		}
		System.out.println("뭔가가 안됨");
		return "SignUpPage";
	}
	
	@PostMapping("/changePw.do")
	public String changePw(User user) {
		if(userService.searchById(user.getUser_id()) != null) {
			System.out.println("11");
			if(userService.searchById(user.getUser_id()).getUser_phone().equals(user.getUser_phone())) {
				System.out.println("변경완료");
				userService.changePw(user);
					return "redirect:/index.jsp";
			}
		}
		System.out.println("뭔가가 안됨");
		return "ChangePw";
	}
	
	@PostMapping("/changeInfo.do")
	public String changeInfo(HttpSession session, User user, Model model) {
		userService.changeInfo(user);
		model.addAttribute("user", userService.searchById((String) session.getAttribute("userId")));
		return "MyPage";
	}
	
	@GetMapping("/deleteInfo.do")
	public String deleteInfo(HttpSession session, User user) {
		System.out.println("deleteInfo.do 들어옴111");
		System.out.println("session.getAtt(userId) = " + session.getAttribute("userId") );
		userService.deleteInfo((String) session.getAttribute("userId"));
		return "redirect:/index.jsp";
	}
	

	
	

	@PostMapping("/findFoodList.do")
	public User findUserWithFoodList(int user_code) {
		return userService.findUserWithFoodList(user_code);
	}
	
	@GetMapping("/userinfo.do")
	public String serchById(HttpSession session, Model model) {
		model.addAttribute("user", userService.getUser((String) session.getAttribute("userId")));
		System.out.println("유저인포 잇리스트....");
		model.addAttribute("eatList", eatService.selectSeqFood((String) session.getAttribute("userId")));	
		return "MyPage";
	}
	
	@GetMapping("/userinfo_jjim.do")
	public String serchById2(HttpSession session, Model model) {
		model.addAttribute("user", userService.getUser_jjim((String) session.getAttribute("userId")));
		return "MyPage_jjim";
	}
	
	@GetMapping("/userinfo_allergyInfo.do")
	public String serchById3(HttpSession session, Model model) {
		model.addAttribute("user", userService.getUser((String) session.getAttribute("userId")));
		return "MyPage_allergyInfo";
	}
	
	
	
	@GetMapping("/find.do")
	public String newPassWord() {
		return "ChangePw";
	}
	
	@GetMapping("/join.do")
	public String getJoin() {
		return "SignUpPage";
	}


}
