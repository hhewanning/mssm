package com.cn.yzy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/comm")
public class CommonsController {
	@RequestMapping("/goPage")
	public ModelAndView getTestHtml(String page) {
		return new ModelAndView(page);
	}
}
