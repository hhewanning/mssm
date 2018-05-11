package com.cn.yzy.service;

import java.util.List;
import java.util.Map;

import com.cn.yzy.pojo.Category;

public interface ICategoryService {

	List<Category> getCategory();

	void saveCategory(Map<Object, Object> map);

	List<Category> findByName(Map<Object, Object> map);

	Category findById(Map<Object, Object> map);

	void updateCategory(Map<Object, Object> map);

	void delCategory(Map<Object, Object> map);

}
