package com.cn.yzy.mapper;

import java.util.List;
import java.util.Map;

import com.cn.yzy.pojo.Category;
import com.cn.yzy.pojo.Publish;

public interface PublishMapper {

	public List<Publish> getPublish();
	public int getcount();

	public void savePublish(Map<Object, Object> map);

	public List<Publish> findByName(Map<Object, Object> map);

	public Publish findById(Map<Object, Object> map);

	public void updatePublish(Map<Object, Object> map);

	public void delPublish(Map<Object, Object> map);

}
