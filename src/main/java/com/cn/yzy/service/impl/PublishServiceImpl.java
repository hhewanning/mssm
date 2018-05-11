package com.cn.yzy.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.yzy.mapper.PublishMapper;
import com.cn.yzy.pojo.Publish;
import com.cn.yzy.service.IPublishService;
@Service
public class PublishServiceImpl implements IPublishService{
	@Resource
	private PublishMapper publishMapper;

	@Override
	public List<Publish> getPublish() {
		// TODO Auto-generated method stub
		return publishMapper.getPublish();
	}

	@Override
	public void savePublish(Map<Object, Object> map) {
		// TODO Auto-generated method stub
		publishMapper.savePublish(map);
	}

	@Override
	public List<Publish> findByName(Map<Object, Object> map) {
		// TODO Auto-generated method stub
		return publishMapper.findByName(map);
	}

	@Override
	public Publish findById(Map<Object, Object> map) {
		// TODO Auto-generated method stub
		return publishMapper.findById(map);
	}

	@Override
	public void updatePublish(Map<Object, Object> map) {
		publishMapper.updatePublish(map);
		
	}

	@Override
	public void delPublish(Map<Object, Object> map) {
		publishMapper.delPublish(map);
		
	}

	@Override
	public int getcount() {
		// TODO Auto-generated method stub
		return publishMapper.getcount();
	}

}
