package com.kms.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kms.dao.RoleDao;
import com.kms.po.Role;



public class indexServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		RoleDao rd =new RoleDao();
		List<Role> lrs =  rd.lrs();
		
		req.setAttribute("lrs", lrs);
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}

}
