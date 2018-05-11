package com.cn.yzy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cn.yzy.pojo.Publish;
import com.cn.yzy.service.IPublishService;

@Controller
@RequestMapping("/publish")

public class PublishController {
	@Resource
	private IPublishService publishService;

	@RequestMapping("/getPublish")
	@ResponseBody
	public ModelAndView getPublish() {

		List<Publish> list = publishService.getPublish();

		return new ModelAndView("admin/publish/list", "list", list);
	}
	@RequestMapping("/savePublish")
	@ResponseBody
	public Object savePublish(String pname) {
		//第一步判断接收的数据类型，如果错误返回相应的提示
		String msg = "error";
		if (pname==null||"".equals(pname.trim())) {
			return new ModelAndView("msg", "msg", msg);
		}
		Map<Object, Object> map = new HashMap<>();
		map.put("pname", pname);
		//查询数据库是否已经有了该数据如果有，返回想应的异常提示
		try {
			List<Publish> list = publishService.findByName(map);
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
			publishService.savePublish(map);
		} catch (Exception e) {
			e.printStackTrace();
			msg = "save error data...";
			return new ModelAndView("msg", "msg", msg);
		}
		return new ModelAndView("redirect:/publish/getPublish");
	}
	@RequestMapping("/goUpdatePublish")
	@ResponseBody
	public ModelAndView goUpdatePublish(String pid) {
		Map<Object, Object> map = new HashMap<>();
		map.put("pid", pid);
		Publish publish = publishService.findById(map);
		return new ModelAndView("admin/publish/mod", "publish", publish);
	}
	
	@RequestMapping("/updatePublish")
	@ResponseBody
	public ModelAndView updatePublish(String pid,String pname) {
		//验证前端传来的数据
		
		Map<Object, Object> map = new HashMap<>();
		map.put("pid", pid);
		map.put("pname", pname);
		//查找要修改的pname在数据库里面是否存在
		String msg = "error";
		List<Publish> list = publishService.findByName(map);
		if (list!=null&&list.size()>0) {
			msg = "yi jing cunzai ，bu 能修改";
			return new ModelAndView("msg", "msg", msg);
		}
		//修改
		publishService.updatePublish(map);
		return new ModelAndView("redirect:/publish/getPublish");
	}
	@RequestMapping("/goDelPublish")
	@ResponseBody
	public ModelAndView goDelPublish(String pid) {
		Map<Object, Object> map = new HashMap<>();
		map.put("pid", pid);
		Publish publish = publishService.findById(map);
		return new ModelAndView("admin/publish/del", "publish", publish);
	}
	@RequestMapping("/delPublish")
	@ResponseBody
	public ModelAndView delPublish(String pid) {
		Map<Object, Object> map = new HashMap<>();
		map.put("pid", pid);
		String msg = "error";
		//先查询图书表,查看该pid是否存在,如果pid存在,直接提示不能删除
		try {
			publishService.delPublish(map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			msg = "delete error";
			return new ModelAndView("msg", "msg", msg);
		}
		return new ModelAndView("redirect:/publish/getPublish");
	}
	@RequestMapping("/getcount")
	@ResponseBody
	public Object getcount(){
		int getcount = publishService.getcount();
		return getcount;
	}
}


