package com.cn.yzy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cn.yzy.pojo.Category;
import com.cn.yzy.service.ICategoryService;

@Controller
@RequestMapping("/category")
public class CategoryController {
	@Resource
	private ICategoryService categoryService;

	@RequestMapping("/getCategory")
	@ResponseBody
	public ModelAndView getCategory() {

		List<Category> list = categoryService.getCategory();

		return new ModelAndView("admin/category/list", "list", list);
	}
	@RequestMapping("/saveCategory")
	@ResponseBody
	public Object saveCategory(String cname) {
		//第一步判断接收的数据类型，如果错误返回相应的提示
		String msg = "error";
		if (cname==null||"".equals(cname.trim())) {
			return new ModelAndView("msg", "msg", msg);
		}
		Map<Object, Object> map = new HashMap<>();
		map.put("cname", cname);
		//查询数据库是否已经有了该数据如果有，返回想应的异常提示
		try {
			List<Category> list = categoryService.findByName(map);
			if (list!=null&&list.size()>0) {
				msg = "yi jing cunzai ";
				return new ModelAndView("msg", "msg", msg);
			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		//如果查询数据库没有这条数据，那么这条数据即可插入数据库
		try {
			categoryService.saveCategory(map);
		} catch (Exception e) {
			e.printStackTrace();
			msg = "save error data...";
			return new ModelAndView("msg", "msg", msg);
		}
		return new ModelAndView("redirect:/category/getCategory");
	}
	
	

	@RequestMapping("/goUpdateCategory")
	@ResponseBody
	public ModelAndView goUpdateCategory(String cid) {
		Map<Object, Object> map = new HashMap<>();
		map.put("cid", cid);
		Category category = categoryService.findById(map);
		return new ModelAndView("admin/category/mod", "category", category);
	}
	
	@RequestMapping("/updateCategory")
	@ResponseBody
	public ModelAndView updateCategory(String cid,String cname) {
		//验证前端传来的数据
		
		Map<Object, Object> map = new HashMap<>();
		map.put("cid", cid);
		map.put("cname", cname);
		//查找要修改的cname在数据库里面是否存在
		String msg = "error";
		List<Category> list = categoryService.findByName(map);
		if (list!=null&&list.size()>0) {
			msg = "yi jing cunzai ，bu 能修改";
			return new ModelAndView("msg", "msg", msg);
		}
		//修改
		categoryService.updateCategory(map);
		return new ModelAndView("redirect:/category/getCategory");
	}
	@RequestMapping("/goDelCategory")
	@ResponseBody
	public ModelAndView goDelCategory(String cid) {
		Map<Object, Object> map = new HashMap<>();
		map.put("cid", cid);
		Category category = categoryService.findById(map);
		return new ModelAndView("admin/category/del", "category", category);
	}
	@RequestMapping("/delCategory")
	@ResponseBody
	public ModelAndView delCategory(String cid) {
		Map<Object, Object> map = new HashMap<>();
		map.put("cid", cid);
		String msg = "error";
		try {
			categoryService.delCategory(map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			msg = "delete error";
			return new ModelAndView("msg", "msg", msg);
		}
		return new ModelAndView("redirect:/category/getCategory");
	}
}
