package com.kms.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kms.po.Book;
import com.kms.po.Booksale;
import com.kms.po.Role;
import com.kms.po.SaledBooks;

public class BookDao extends BaseDao{
	public Book findone(Book book) {
		String sql ="SELECT   `bkid`  FROM    `test`.`book` "
				+ "WHERE `col` LIKE ?"
				+ " && `bknm`LIKE ? " + 
				"&& `maj` LIKE ? && `grd` LIKE ?";
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
//			System.out.println("开始连接");
			connection = super.getConnection();
			statement = connection.prepareStatement(sql);
			statement.setObject(1, book.getCol());
			statement.setObject(2, book.getBknm());
			statement.setObject(3, book.getMaj());
			statement.setObject(4, book.getGrd());
			resultSet = statement.executeQuery();
//			System.out.println(book.getCol()+"  间隔  "+book.getBkid()+"  间隔  "+book.getGrd()+"  间隔  "+book.getMaj());
			while (resultSet.next()) {
//				System.out.println("找到书籍信息");
				book.setBkid(String.valueOf(resultSet.getInt("bkid")));
			}
		} catch (SQLException e) {
			System.out.println("查询书籍id失败："+e.getMessage());
		} finally {
			try {
				resultSet.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				statement.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return book;
	}
	public List<Book> findall(Book book) {
		List<Book> booklrs = new ArrayList<Book>();
		String sql ="SELECT   `bkid`  FROM    `test`.`book` "
				+ "WHERE `col` LIKE ?"
				+"&& `maj` LIKE ? && `grd` LIKE ?";
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
//			System.out.println("开始连接");
			connection = super.getConnection();
			statement = connection.prepareStatement(sql);
			statement.setObject(1, book.getCol());
			statement.setObject(2, book.getMaj());
			statement.setObject(3, book.getGrd());
			resultSet = statement.executeQuery();
//			System.out.println(book.getCol()+"  间隔  "+book.getBkid()+"  间隔  "+book.getGrd()+"  间隔  "+book.getMaj());
			while (resultSet.next()) {
				Book book2 = new Book();
				book2.setBknm(book.getBknm());
				book.setBkid(String.valueOf(resultSet.getInt("bkid")));
				book2.setBkid(book.getBkid());
				booklrs.add(book2);
			}
		} catch (SQLException e) {
			System.out.println("查询书籍id失败："+e.getMessage());
		} finally {
			try {
				resultSet.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				statement.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return booklrs;
	}
	
	public Booksale  findbknm(Booksale booksale) {
		String sql ="SELECT   `bknm`  FROM    `test`.`book` "
				+ "WHERE `bkid` = ? ";
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		List<Booksale> bknmlrs = new ArrayList<Booksale>();
		try {
//			System.out.println("开始连接");
			connection = super.getConnection();
			statement = connection.prepareStatement(sql);
			statement.setObject(1, Integer.valueOf(booksale.getBkid()));
			resultSet = statement.executeQuery();
//			System.out.println(book.getCol()+"  间隔  "+book.getBkid()+"  间隔  "+book.getGrd()+"  间隔  "+book.getMaj());
			while (resultSet.next()) {
//				System.out.println("找到书籍信息");
				booksale.setBknm(resultSet.getString("bknm"));
			}
		} catch (SQLException e) {
			System.out.println("查询书籍id失败："+e.getMessage());
		} finally {
			try {
				resultSet.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				statement.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return booksale;
	}
	
	public List<Book>  findnm(Book book) {
		List<Book> booklrs = new ArrayList<Book>();
		String sql ="SELECT   `bknm`,`bkid`  FROM    `book`  WHERE  `bknm` LIKE ? " ;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		String bknm = "";
		char[] ch = book.getBknm().toCharArray();
		for (int i = 0; i < ch.length; i++) {
			 bknm = bknm+"%"+ch[i];
		}
		bknm = bknm+"%";
		
		try {
//			System.out.println("开始连接");
			connection = super.getConnection();
			statement = connection.prepareStatement(sql);
			
			statement.setObject(1, bknm);
			resultSet = statement.executeQuery();
//			System.out.println(book.getCol()+"  间隔  "+book.getBkid()+"  间隔  "+book.getGrd()+"  间隔  "+book.getMaj());
			while (resultSet.next()) {
				book = new Book();
				book.setBknm(resultSet.getString("bknm"));
				book.setBkid(String.valueOf(resultSet.getInt("bkid")));
				booklrs.add(book);
			}
		} catch (SQLException e) {
			System.out.println("查询书籍id失败："+e.getMessage());
		} finally {
			try {
				resultSet.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				statement.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return booklrs;
	}
	
	public SaledBooks  findid(SaledBooks saledbooks) {
		String sql ="SELECT   `bknm`  FROM    `test`.`book` "
				+ "WHERE `bkid` = ? ";
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
//			System.out.println("开始连接");
			connection = super.getConnection();
			statement = connection.prepareStatement(sql);
			statement.setObject(1, Integer.valueOf(saledbooks.getBkid()));
			resultSet = statement.executeQuery();
//			System.out.println(book.getCol()+"  间隔  "+book.getBkid()+"  间隔  "+book.getGrd()+"  间隔  "+book.getMaj());
			while (resultSet.next()) {
//				System.out.println("找到书籍信息");
				saledbooks.setBknm(resultSet.getString("bknm"));
			}
		} catch (SQLException e) {
			System.out.println("查询书籍id失败："+e.getMessage());
		} finally {
			try {
				resultSet.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				statement.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return saledbooks;
	}
	
	public int insert (Book book) {
		int i=-1;
		String sql = "INSERT INTO `test`.`book`"
				+ "(`bknm`,`col`,`maj` ,`grd`) "
				+ "	VALUES ( ? ,?  ,? ,? )";
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		try {
			connection = super.getConnection();
			preparedStatement = connection.prepareStatement(sql);

			
			preparedStatement.setObject(1,book.getBknm());
			
			preparedStatement.setObject(2,book.getCol());
			
			preparedStatement.setObject(3,book.getMaj());
			
			preparedStatement.setObject(4,book.getGrd());
			
			
			i=preparedStatement.executeUpdate();
		} catch (Exception e) {
			System.out.println("插入错误："+e.getMessage());
			
		}finally {
			try {
				preparedStatement.close();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
			try {
				connection.close();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		}
		 return i;			
	}
}
