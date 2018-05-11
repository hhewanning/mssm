package com.cn.yzy.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.yzy.mapper.UserMapper;
import com.cn.yzy.pojo.User;
import com.cn.yzy.service.IUserService;
@Service
public class UserServiceImpl implements IUserService {
	@Autowired
	private UserMapper userMapper;
	@Override
	public List<User> getUsers() {
		System.out.println("UserServiceImpl-getUsers");
		return userMapper.getUsers();
	}

}
