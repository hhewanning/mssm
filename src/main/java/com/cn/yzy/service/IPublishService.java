package com.cn.yzy.service;

import java.util.List;
import java.util.Map;

import com.cn.yzy.pojo.Publish;

public interface IPublishService {

	List<Publish> getPublish();

	void savePublish(Map<Object, Object> map);

	List<Publish> findByName(Map<Object, Object> map);

	Publish findById(Map<Object, Object> map);

	void updatePublish(Map<Object, Object> map);

	void delPublish(Map<Object, Object> map);
	public int getcount();
}
