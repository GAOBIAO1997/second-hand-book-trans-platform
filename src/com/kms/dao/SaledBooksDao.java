package com.kms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kms.po.SaledBooks;

public class SaledBooksDao extends BaseDao{
	public List<SaledBooks> find(String uid) {
		List<SaledBooks> lrs = new ArrayList<SaledBooks>();
		SaledBooks saledBook = null;
		String sql = "  SELECT   `bkid`, `uptm`, `dwtm`  FROM    `test`.`sbed` " +
		"   WHERE uid = ?  ";
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			statement.setObject(1, Integer.valueOf(uid));
			resultSet = statement.executeQuery();

			while (resultSet.next()) {
//				System.out.println("查询出结果");
			    saledBook = new SaledBooks();
				saledBook.setDwtm(resultSet.getString("dwtm"));
				saledBook.setUptm(resultSet.getString("uptm"));
				saledBook.setBkid(resultSet.getString("bkid")+"");
				
//				System.out.println(saledBook.getBkid()+"   间隔  "+saledBook.getUptm()+"  间隔      "+saledBook.getDwtm());
				lrs.add(saledBook);
			}
		} catch (SQLException e) {
			System.out.println("书籍流水信息查询失败："+e.getMessage());
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
		return lrs;
	}

}
