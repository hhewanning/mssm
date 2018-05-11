package com.cn.yzy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cn.yzy.pojo.User;
import com.cn.yzy.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private IUserService userService;

	@RequestMapping("/getUsers")
	@ResponseBody
	public Object findUsers() {
		List<User> list = userService.getUsers();
		System.out.println("--------------"+list);
		return list;
	}

	@RequestMapping("/xxxTest")
	public ModelAndView getTestHtml() {
		System.out.println("=======================================");
		ModelAndView modelAndView = new ModelAndView("test");
		return modelAndView;
	}
}
