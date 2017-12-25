package com.kms.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.kms.dao.BookDao;
import com.kms.dao.SaledBooksDao;
import com.kms.po.Book;
import com.kms.po.SaledBooks;
import com.opensymphony.xwork2.ActionSupport;

public class DownBooksAction extends ActionSupport{
	private String uid = null;


	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	List<SaledBooks> saledlrs = new ArrayList<SaledBooks>();

	public List<SaledBooks> getSaledlrs() {
		return saledlrs;
	}

	public void setSaledlrs(List<SaledBooks> saledlrs) {
		this.saledlrs = saledlrs;
	}

	/**
	 * 1.获取uid
	 * 2.根据uid获取uptm,dwtm,bkid
	 * 3.根据bkid获取bknm
	 * 4.将bknm,uptm,dwtm存入saledlrs里，用request传给页面
	 * **/
	public String find() throws Exception{
		HttpSession session = ServletActionContext.getRequest().getSession();
		uid = (String) session.getAttribute("uid");
		System.out.println("uid in find:"+uid);
		SaledBooksDao saledBooksDao = new SaledBooksDao();
		BookDao bookDao = new BookDao();
		
		saledlrs = saledBooksDao.find(uid);

		for (int i = 0; i < saledlrs.size(); i++) {
			saledlrs.set(i, bookDao.findid(saledlrs.get(i)));
			System.out.println("bknm in action:"+saledlrs.get(i).getBknm());
		}
		session.setAttribute("saledlrs", saledlrs);
		return "find";
	}

}
