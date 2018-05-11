package com.cn.yzy.pojo;

import java.io.Serializable;

public class BookManage implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 959068140023805944L;
	private String bid;
	private String bname;
	private String author;
	private String count;
	private String image;
	private String cid;
	private String price;
	private String dayprice;
	private String isdel;
	private String pid;
	
	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDayprice() {
		return dayprice;
	}

	public void setDayprice(String dayprice) {
		this.dayprice = dayprice;
	}

	public String getIsdel() {
		return isdel;
	}

	public void setIsdel(String isdel) {
		this.isdel = isdel;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getBname() {
		return bname;
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}


	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	@Override
	public String toString() {
		return "BookManage [bid=" + bid + ", bname=" + bname + ", author=" + author + ", count=" + count + ", image="
				+ image + ", cid=" + cid + ", price=" + price + ", dayprice=" + dayprice + ", isdel=" + isdel + ", pid="
				+ pid + "]";
	}
	

}
