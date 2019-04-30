package com.ssafy.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssafy.spring.service.UserService;
import com.ssafy.spring.vo.User;



@RequestMapping("/user")
@Controller
public class UserController {

	UserService userService;
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@PostMapping("/login.do")
	public String login(HttpSession session,String id,String pw) {
		User user = userService.searchById(id);
		if(user!=null && user.getUser_pw().equals(pw)) {
			session.setAttribute("userId", id);			
		}
		return "MainPage";
		
	}
	@GetMapping("/logout.do")
	public String login(HttpSession session) {
		session.invalidate();
		return "redirect:/index.jsp";
	}
	

	@PostMapping("/insertUser.do")
	public String insertUser(User user) {
		userService.insertUser(user);
		return "redirect:/index.jsp";
	}

	@PostMapping("/findFoodList.do")
	public User findUserWithFoodList(int user_code) {
		return userService.findUserWithFoodList(user_code);
	}
	
	@GetMapping("/userinfo.do")
	public String serchById(String user_id, Model model) {
		model.addAttribute("user", userService.searchById(user_id));
		return "MyPage";
	}
	
	@GetMapping("/join.do")
	public String getJoin() {
		return "SignUpPage";
	}
	
	
	


}
