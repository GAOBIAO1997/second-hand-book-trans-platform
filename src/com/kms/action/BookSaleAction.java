package com.kms.action;


import com.kms.dao.BookDao;
import com.kms.dao.BookSaleDao;
import com.kms.dao.RoleDao;
import com.kms.po.Book;
import com.kms.po.BookSaleInput;
import com.kms.po.Booksale;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class BookSaleAction extends ActionSupport implements ModelDriven<BookSaleInput>{
	private BookSaleInput bookSaleInput = new BookSaleInput();

	public BookSaleInput getBookSaleInput() {
		return bookSaleInput;
	}
	public void setBookSaleInput(BookSaleInput bookSaleInput) {
		this.bookSaleInput = bookSaleInput;
	}

	private Booksale booksale= new Booksale();
	private Book book = new Book();
	//将页面提交的表单数据分别存储在booksale和book中
	private Booksale setBooksale(Booksale booksale) {
		booksale.setMsg(bookSaleInput.getMsg());
		booksale.setPrc(bookSaleInput.getPrc());
		booksale.setUptm(bookSaleInput.getUptm());
		booksale.setUid(bookSaleInput.getUid());
		booksale.setSup(bookSaleInput.getSup());
		return booksale;
	}
	private Book setbook(Book book ) {
		book.setBknm(bookSaleInput.getBknm());
		book.setCol(bookSaleInput.getCol());
		book.setGrd(bookSaleInput.getGrd());
		book.setMaj(bookSaleInput.getMaj());
		return book;
		
	}

//添加售书信息
	public String sale() throws Exception{
		
		BookSaleDao bsd = new BookSaleDao();
		
		BookDao bkd = new BookDao();
		//获取书的信息
		book=setbook(book);
		
		book = bkd.findone(book);
		if (book.getBkid()==null) {
			int i =bkd.insert(book);
		}
		book = bkd.findone(book);
		
		booksale=setBooksale(booksale);
		booksale.setBkid(book.getBkid());
		System.out.println("uid in booksaledao.action:"+booksale.getUid());
//		System.out.println("价格:"+booksale.getPrc());
		int i = bsd.add(booksale);
//		System.out.println("插入成功？"+i);
		HomeAction homeAction = new HomeAction();
    	try {
    		String result_string__home = homeAction.show();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "sale";
	}
	
	public String update() throws Exception{
		
		BookSaleDao bsd = new BookSaleDao();
		BookDao bkd = new BookDao();
		book=setbook(book);
		book = bkd.findone(book);
		booksale=setBooksale(booksale);
		booksale.setBkid(book.getBkid());
		int i = bsd.add(booksale);
		System.out.println("插入成功？"+i);
		return "update";
	}
	
	@Override
	public BookSaleInput getModel() {
		if (this.bookSaleInput ==null) {
			this.bookSaleInput = new BookSaleInput();
		}
		return this.bookSaleInput;
	}
}
