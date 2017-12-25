package com.kms.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.print.attribute.standard.PDLOverrideSupported;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kms.dao.RoleDao;
import com.kms.dao.personDao;
import com.kms.po.Person;
import com.kms.po.Role;



public class regServlet extends HttpServlet {
	int flag=0;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
	    resp.setCharacterEncoding("UTF-8");
	    
	    //读取提交的真实姓名，昵称，密码
	    String pwd = req.getParameter("pwd");
	    String pnm = req.getParameter("pnm");
	    String nm = req.getParameter("nm");

	    //判断是否已经注册过
    	RoleDao rd =new RoleDao();
		List<Role> lrs =  rd.lrs();
		for(int i1=0;i1<lrs.size();i1++) {
//			System.out.println("数据库中的Pnm: "+lrs.get(i1).getPnm()+" 页面提交的Pnm: "+pnm);
//			System.out.println("\n");
			if (lrs.get(i1).getPnm().equals(pnm)) {
				flag=1;
				break;
			}	
		}
		PrintWriter out = resp.getWriter();
		if (flag!=1) {
		    //写入数据库
		    Person person = new Person(pwd, pnm, nm);
		    personDao pd = new personDao();
		    int i = pd.addPersion(person);
		    System.out.println(i);
		    
		    //判断注册是否成功
		    if (i==1) {
				String js = " <script>alert('right');windows.history.go(-1)</script> ";
				out.write(js);
				resp.sendRedirect("login.jsp");
			}else {
				String js = " <script>alert('registered Already class1');windows.history.go(-1)</script> ";
				out.write(js);
			}
			
		}else {
			flag=0;
			String js = " <script>alert('registered Already');windows.history.go(-1)</script> ";
			out.write(js);
		}
	}

}
