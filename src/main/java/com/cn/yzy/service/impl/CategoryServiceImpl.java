package com.cn.yzy.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.yzy.mapper.CategoryMapper;
import com.cn.yzy.pojo.Category;
import com.cn.yzy.service.ICategoryService;
@Service
public class CategoryServiceImpl implements ICategoryService{
	@Resource
	private CategoryMapper categoryMapper;
	@Override
	public List<Category> getCategory() {
		return categoryMapper.getCategory();
	}
	@Override
	public void saveCategory(Map<Object, Object> map) {
		categoryMapper.saveCategory(map);
		
	}
	@Override
	public List<Category> findByName(Map<Object, Object> map) {
		return categoryMapper.findByName(map);
	}
	@Override
	public Category findById(Map<Object, Object> map) {
		return categoryMapper.findById(map);
	}
	@Override
	public void updateCategory(Map<Object, Object> map) {
		categoryMapper.updateCategory(map);
		
	}
	@Override
	public void delCategory(Map<Object, Object> map) {
		categoryMapper.delCategory(map);
	}

}
