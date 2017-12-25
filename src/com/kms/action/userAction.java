package com.kms.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.kms.dao.RoleDao;
import com.kms.dao.UserDao;
import com.kms.dao.personDao;
import com.kms.po.Person;
import com.kms.po.Role;
import com.kms.po.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class userAction extends ActionSupport implements ModelDriven<User>{
	private User user = new User();
	private String uid = null;


	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public String add() throws Exception{
		//读取提交的真实姓名，昵称，密码
		int flag=0;
		HttpServletRequest req= ServletActionContext.getRequest();
		HttpServletResponse resp= ServletActionContext.getResponse();
	    String unm = user.getUnm();
	    

	    //判断是否已经注册过
    	UserDao userdao = new UserDao();
		List<User> lrs =  userdao.lrs();
		for(int i1=0;i1<lrs.size();i1++) {
			System.out.println("数据库中的Pnm: "+lrs.get(i1).getUnm()+" 页面提交的Pnm: "+unm);
			System.out.println("\n");
			if (lrs.get(i1).getUnm().equals(unm)) {
				flag=1;
				break;
			}	
		}
		if (flag!=1) {
		    //写入数据库
			UserDao ud = new UserDao();
			int i = ud.add(this.user);
			lrs = ud.lrs();
			return "add";
			
		}else {
			flag=0;
			req.setAttribute("registe", 1);
			req.getRequestDispatcher("reg.jsp").forward(req, resp);
			return "adderror";
		}	
			
	}
	public String update() throws Exception{
		UserDao ud = new UserDao();
		int i = ud.update(this.user);
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("user", user);
		return "update";
		}
	public String get() throws Exception{
		UserDao ud = new UserDao();
		HttpServletRequest request= ServletActionContext.getRequest();
		uid = (String) request.getAttribute("uid");
		HttpServletResponse response = ServletActionContext.getResponse();
		System.out.println("uid:"+uid);
		this.user.setUid(uid);
		user = ud.get(this.user);
		System.out.println("request中的uid"+request.getAttribute("uid"));
		request.setAttribute("user", user);
		System.out.println("姓名："+user.getUnm());
		Cookie cookie = new Cookie("currentDate", null); 
    	cookie.setMaxAge(60*60*24);
    	response.addCookie(cookie);
        cookie = new Cookie("uid", null); 
    	cookie.setMaxAge(60*60*24);
    	response.addCookie(cookie);
    	cookie = new Cookie("unm", null); 
    	cookie.setMaxAge(60*60*24);
    	response.addCookie(cookie);
		return "get";
		}
	
	
	//向页面传值
	private  List<User> lrs ;
	
	
	public List<User> getLrs() {
		return lrs;
	}
	
	@Override
	public User getModel() {
		if (this.user ==null) {
			this.user = new User();
		}
		return this.user;
	}
}
