package com.cn.yzy.pojo;

import java.io.Serializable;

public class Category  implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 2112502471621980188L;
	private String cid;
	private String cname;
	
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Category(String cid, String cname) {
		super();
		this.cid = cid;
		this.cname = cname;
	}
	
}
