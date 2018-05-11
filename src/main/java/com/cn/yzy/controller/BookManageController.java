package com.cn.yzy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cn.yzy.pojo.BookManage;
import com.cn.yzy.pojo.Category;
import com.cn.yzy.pojo.Publish;
import com.cn.yzy.service.IBookManageService;
import com.cn.yzy.service.ICategoryService;
import com.cn.yzy.service.IPublishService;

@Controller
@RequestMapping("/bookManage")
public class BookManageController {
	@Resource
	private IBookManageService bookManageService;
	@Resource
	private ICategoryService categoryService;
	@Resource
	private IPublishService publishService;
	
	@RequestMapping("/getBookManage")
	@ResponseBody
	public ModelAndView getBookManage() {

		List<BookManage> list = bookManageService.getBookManage();
		Map<Object, Object> map = new HashMap<>();
		map.put("list", list);
		List<Category> cList = categoryService.getCategory();
		map.put("cList", cList);
		List<Publish> pList = publishService.getPublish();
		map.put("pList", pList);
		return new ModelAndView("admin/book/list", "map", map);
	}
	@RequestMapping("/goBookList")
	@ResponseBody
	public  ModelAndView goBookList(){

		List<BookManage> list = bookManageService.getBookManage();
		Map<Object, Object> map = new HashMap<>();
		map.put("list", list);
		List<Category> cList = categoryService.getCategory();
		map.put("cList", cList);
		List<Publish> pList = publishService.getPublish();
		map.put("pList", pList);
		return new ModelAndView("admin/book/listlist", "map", map);
	}
//获得分类查询下拉框
	@RequestMapping("/getCategoryList")
	@ResponseBody
	public ModelAndView getCategoryList(){

		List<BookManage> cList = bookManageService.getCategoryList();

		return new ModelAndView("admin/book/listlist", "cList", cList);
	}

}
