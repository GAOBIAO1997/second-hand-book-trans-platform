package com.kms.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.kms.dao.BookDao;
import com.kms.dao.BookSaleDao;
import com.kms.dao.UserDao;
import com.kms.po.Book;
import com.kms.po.Booksale;
import com.kms.po.Role;
import com.kms.po.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import sun.nio.cs.Surrogate.Generator;

public class BookBuyAction extends ActionSupport implements ModelDriven<Book>{
	private Book book = new Book();
	private Booksale booksale = new Booksale();
	private List<Booksale> lrs = new ArrayList<Booksale>();
	private List<Booksale> lrs1 = new ArrayList<Booksale>();
	private List<Booksale> lrscenter = new ArrayList<Booksale>();
	private List<Booksale> lrscenter1 = new ArrayList<Booksale>();
	private List<Booksale> lrsfind = new ArrayList<Booksale>();
	private String bknm = "无输入";
	HttpSession session = ServletActionContext.getRequest().getSession();
	

	public List<Booksale> getLrs1() {
		return lrs1;
	}

	public void setLrs1(List<Booksale> lrs1) {
		this.lrs1 = lrs1;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	@Override
	public Book getModel() {
		if (this.book ==null) {
			this.book = new Book();
		}
		return this.book;
	}
	
	public List<Booksale> getLrs() {
		return lrs;
	}

	public void setLrs(List<Booksale> lrs) {
		this.lrs = lrs;
	}
	
	public String buyall() throws Exception{
		//查找书id
		BookDao bkd = new BookDao();
		BookSaleDao bsd = new BookSaleDao();
//		System.out.println("action: "+book.getCol()+"  间隔  "+book.getBknm()+"  间隔  "+book.getGrd()+"  间隔  "+book.getMaj());
		List<Book> booklrs = bkd.findall(book);
		//根据书id查找图书信息
		for (int i = 0; i < booklrs.size(); i++) {
			book = booklrs.get(i);
			int bkid=Integer.parseInt(book.getBkid());
			
			lrscenter = bsd.findall(bkid);
			for (int j = 0; j < lrscenter.size(); j++) {
				lrs.add(lrscenter.get(j));
			}
		}
		for (int i = 0; i < lrs.size(); i++) {
			lrs.set(i, bkd.findbknm(lrs.get(i)));
		}
		session.setAttribute("lrsbook", lrs);
		return "buyall";
	}
	
	public String buybook() throws Exception{
		//查找书id
		BookDao bkd = new BookDao();
		BookSaleDao bsd = new BookSaleDao();
		HttpServletRequest req= ServletActionContext.getRequest();
		bknm=req.getParameter("bknm");
		book.setBknm(bknm);
		
		List<Book> booklrs = bkd.findnm(book);
		

		//根据书id查找图书信息
		for (int i = 0; i < booklrs.size(); i++) {
			book = booklrs.get(i);
//			System.out.println("action: "+book.getCol()+"  间隔  "+book.getBknm()+"  间隔  "+book.getGrd()+"  间隔  "+book.getMaj());
			int bkid=Integer.parseInt(book.getBkid());
			lrscenter1 = new ArrayList<Booksale>();
			lrscenter1 = bsd.findall(bkid);
			for (int j = 0; j < lrscenter1.size(); j++) {
				
				lrs.add(lrscenter1.get(j));
			}
		}
		for (int i = 0; i < lrs.size(); i++) {
			lrs.set(i, bkd.findbknm(lrs.get(i)));
			System.out.println("bknm in bookbuyaction:"+lrs.get(i).getBknm());
			System.out.println("bkid in bookbuyaction:"+lrs.get(i).getBkid());
			System.out.println("sup in bookbuyaction:"+lrs.get(i).getSup());
			System.out.println("msg in bookbuyaction:"+lrs.get(i).getMsg());
			System.out.println("prc in bookbuyaction:"+lrs.get(i).getPrc());
			System.out.println("uid in bookbuyaction:"+lrs.get(i).getUid());
			
		}
		session.setAttribute("lrsbook", lrs);
		return "buybook";
	}
	
	public String getBknm() {
		return bknm;
	}

	public void setBknm(String bknm) {
		this.bknm = bknm;
	}

	public String find() throws Exception{
		/**1.生成随机数作为bkid
		 * 2.找到bkid对应的一本书信息返回
		 * 3.循环三次
		 * **/
		lrsfind = new ArrayList<Booksale>();
		BookSaleDao bsd = new BookSaleDao();
		Booksale booksale = new Booksale();
		BookDao bkd = new BookDao();
		for(int i=0;i<4;i++) {
			int sid = (int)(Math.random()*90);
			booksale = bsd.findone(sid);
			lrsfind.add(booksale);
		}
		for (int i = 0; i < lrsfind.size(); i++) {
			lrsfind.set(i, bkd.findbknm(lrsfind.get(i)));
			System.out.println("booknm in lrsbook:"+lrsfind.get(i).getBknm());
			
		}
		session.setAttribute("lrsfind", lrsfind);
		return "find";
	}
	

}
