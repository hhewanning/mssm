package com.cn.yzy.mapper;

import java.util.List;
import java.util.Map;

import com.cn.yzy.pojo.Category;

public interface CategoryMapper {
	public List<Category> getCategory();

	public void saveCategory(Map<Object, Object> map);

	public List<Category> findByName(Map<Object, Object> map);

	public Category findById(Map<Object, Object> map);

	public void updateCategory(Map<Object, Object> map);

	public void delCategory(Map<Object, Object> map);
}
