package com.cn.yzy.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.yzy.mapper.BookManageMapper;
import com.cn.yzy.pojo.BookManage;
import com.cn.yzy.service.IBookManageService;
@Service
public class BookManageServiceImpl implements IBookManageService {
	@Resource
	private BookManageMapper bookManageMapper;

	@Override
	public List<BookManage> getBookManage() {
		return bookManageMapper.getBookManage();
		
	}
	@Override
	public List<BookManage> getCategoryList() {
		return bookManageMapper.getCategoryList();

	}


}