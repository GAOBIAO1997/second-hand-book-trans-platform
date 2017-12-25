package com.kms.action;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.kms.dao.BookDao;
import com.kms.dao.BookSaleDao;
import com.kms.dao.RoleDao;
import com.kms.po.BSS;
import com.kms.po.Booksale;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BSSAction extends ActionSupport implements ModelDriven<BSS>{
	private String dwtm;
	int y,m,d,h,mi,s;
	public String gettime() {
		Calendar cal=Calendar.getInstance();
		y=cal.get(Calendar.YEAR);
		m=cal.get(Calendar.MONTH)+1;
		d=cal.get(Calendar.DATE);
		h=cal.get(Calendar.HOUR_OF_DAY);
		mi=cal.get(Calendar.MINUTE);
		s=cal.get(Calendar.SECOND);
		String string = y+"-"+m+"-"+d+"";
		return string;
	}
	

	Booksale booksale = new Booksale();
	HttpSession session = ServletActionContext.getRequest().getSession();
	private BSS bss = new BSS();
	public BSS getBss() {
		return bss;
	}

	public void setBss(BSS bss) {
		this.bss = bss;
	}
	public String update() throws Exception{
		BookSaleDao bsd = new BookSaleDao();
		Booksale booksale = new Booksale();
		booksale.setPrc(bss.getPrc());
		
		booksale.setMsg(bss.getMsg());
		booksale.setBknm(bss.getBknm());
		System.out.println("bss中的msg:"+bss.getBknm());
		booksale.setSid(bss.getSid());
		booksale.setUid(session.getAttribute("uid")+"");
		int i = bsd.update(booksale);
		if (i == 0) {
			return ERROR;
		} else {
			System.out.println("插入成功");
			return this.list();
		}
	}
	
	public String delete() throws Exception{
		HttpServletRequest request= ServletActionContext.getRequest();
		String sid = (String) request.getAttribute("sid");
		System.out.println("收获编号："+sid);
		BookSaleDao booksaledao = new BookSaleDao();
		int j = booksaledao.delete(sid);
		return this.list();
	}
	
	public String saled() throws Exception{
		dwtm = gettime();
//		System.out.println("dwtm:"+gettime());
		HttpServletRequest request= ServletActionContext.getRequest();
		String sid = (String) request.getAttribute("sid");
		BookSaleDao booksaledao = new BookSaleDao();
		Booksale booksale = new Booksale();
		booksale = booksaledao.findsid(sid);
		int k = booksaledao.insert(booksale,dwtm);
		int j = booksaledao.delete(sid);
		DownBooksAction downBooksAction = new DownBooksAction();
    	try {
			String result_string = downBooksAction.find();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return this.list();
		
	}
	
	public String list() throws Exception{
		BookDao bookdao = new BookDao();
		BookSaleDao bsd = new BookSaleDao();
		HttpSession session = ServletActionContext.getRequest().getSession();
		System.out.println(session.getAttribute("uid"));
		
		
//		String uid = (String) ;
//		int uidint=Integer.parseInt(uid);
		lrs = bsd.lrs((String) session.getAttribute("uid"));
		int nm = lrs.size();
		for(int i=0;i<nm;i++) {
			lrs.set(i, bookdao.findbknm(lrs.get(i)));
		}
		
		session.setAttribute("lrssaledbook", lrs);
			return "list";
		
	}

	
	private  List<Booksale> lrs ;

	@Override
	public BSS getModel() {
		if (this.bss ==null) {
			this.bss = new BSS();
		}
		return this.bss;
	}

}
