package com.kms.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kms.action.BookBuyAction;
import com.kms.action.DownBooksAction;
import com.kms.action.HomeAction;
import com.kms.dao.UserDao;
import com.kms.po.User;



public class loginServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8649379140114311537L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    int flag=0,flag1=0;
	    String sid,times;
	    req.setCharacterEncoding("UTF-8");
	    resp.setCharacterEncoding("UTF-8");
	    User user = new User();
	    user.setUnm(req.getParameter("unm"));
	    user.setPwd(req.getParameter("pwd"));
	    sid=req.getParameter("sid");
	    times=req.getParameter("times");

	    if (times.equals("0")) {
	    	flag1=1;
		}
	    else if (sid.equals(req.getSession().getAttribute("sid"))) {
	    	flag1=1;
		}
	    
    	UserDao rd =new UserDao();
		List<User> lrs =  rd.lrs();
		for(int i=0;i<lrs.size();i++) {
			System.out.println("\n");
			if (lrs.get(i).getUnm().equals(user.getUnm()) && lrs.get(i).getPwd().equals(user.getPwd())) {
				flag=1;
				user=lrs.get(i);
				break;
			}	
		}
		
	    if (flag==1&&flag1==1) {
	    	HttpSession session = req.getSession();
	    	session.setAttribute("user", user);
	    	session.setAttribute("uid", user.getUid());
	    	Cookie cookie = new Cookie("userId", null); 
	    	cookie.setMaxAge(0);
	    	resp.addCookie(cookie);
	    	req.setAttribute("code", 0);
	    	req.setAttribute("login", 0);
	    	req.setAttribute("registe", 0);
	    	//调用action中的方法初始化加载数据
	    	DownBooksAction downBooksAction = new DownBooksAction();
	    	try {
				String result_string = downBooksAction.find();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	BookBuyAction bookBuyAction = new BookBuyAction();
	    	try {
				String result_string_buy = bookBuyAction.find();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	HomeAction homeAction = new HomeAction();
	    	try {
	    		String result_string__home = homeAction.show();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
			req.getRequestDispatcher("home.jsp").forward(req, resp);
		}else if (flag1==0) {               
			req.setAttribute("code", 1);
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}else{
			req.setAttribute("login", 1);
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		} 
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet");
	}
}
