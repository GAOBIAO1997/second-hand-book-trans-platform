package com.kms.action;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.swing.LayoutStyle;

import org.apache.struts2.ServletActionContext;

import com.kms.dao.BookDao;
import com.kms.dao.BookSaleDao;
import com.kms.po.Booksale;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport{
	/**1.提取session中的uid;
	 * 2.搜索uid对应书籍编号bkid,sup,uptm,prc,msg;
	 * 3.搜索bkid对应bknm
	 * 4.将搜索出的值存入session
	 * **/
	private List<Booksale> lrssaledbook = new ArrayList<Booksale>();
	
	public List<Booksale> getLrs() {
		return lrssaledbook;
	}

	public void setLrs(List<Booksale> lrssaledbook) {
		this.lrssaledbook = lrssaledbook;
	}
	
	public String show() {
		BookDao bookdao = new BookDao();
		BookSaleDao bsd = new BookSaleDao();
		HttpSession session = ServletActionContext.getRequest().getSession();
		System.out.println(session.getAttribute("uid"));
		
		
//		String uid = (String) ;
//		int uidint=Integer.parseInt(uid);
		lrssaledbook = bsd.lrs((String) session.getAttribute("uid"));
		int nm = lrssaledbook.size();
		for(int i=0;i<nm;i++) {
			lrssaledbook.set(i, bookdao.findbknm(lrssaledbook.get(i)));
		}
		
		session.setAttribute("lrssaledbook", lrssaledbook);
		return "show";
	}

}
