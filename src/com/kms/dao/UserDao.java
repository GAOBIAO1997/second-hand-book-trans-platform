package com.kms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kms.po.Book;
import com.kms.po.Role;
import com.kms.po.User;

public class UserDao extends BaseDao{
	public List<User> lrs() {
		List<User> lrs = new ArrayList<User>();
		String sql = "  SELECT    * FROM  `test`.`user` ";
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			connection = getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				User user = new User();
				user.setPwd(resultSet.getString("pwd"));
				user.setRnm(resultSet.getString("rnm"));
				user.setUid(resultSet.getInt("uid")+"");
				user.setCol(resultSet.getString("col"));
				user.setMaj(resultSet.getString("maj"));
				user.setUmail(resultSet.getString("umail"));
				user.setUnat(resultSet.getString("unat"));
				user.setUnb(resultSet.getString("unb"));
				user.setUqq(resultSet.getString("uqq"));
				user.setUsx(resultSet.getString("usx"));
				user.setUtel(resultSet.getString("utel"));
				user.setUadd(resultSet.getString("uadd"));
				user.setUnm(resultSet.getString("unm"));
				lrs.add(user);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
			lrs = null;
		}finally{
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return lrs;
	}
	
	public int add (User user) {
		System.out.println("正在插入元素");
		int i=-1;
		String sql = "INSERT INTO `test`.`user`"
				+ "(`unm`,`pwd`,`rnm`,`unb`,`usx`,`unat`,`uadd`,`utel`,`uqq`,`col`,`umail`,`maj` ) "
				+ "			VALUES ( ? ,? ,? ,?  ,?, ? ,?, ? "
				+ " , ? ,? ,? ,?  )";
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		try {
			connection = super.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setObject(1,user.getUnm());
			preparedStatement.setObject(2,user.getPwd());
			preparedStatement.setObject(3,user.getRnm());
			preparedStatement.setObject(4,user.getUnb());
			preparedStatement.setObject(5,user.getUsx());
			preparedStatement.setObject(6,user.getUnat());
			preparedStatement.setObject(7,user.getUadd());
			preparedStatement.setObject(8,user.getUtel());
			preparedStatement.setObject(9,user.getUqq());
			preparedStatement.setObject(10,user.getCol());
			preparedStatement.setObject(11,user.getUmail());
			preparedStatement.setObject(12,user.getMaj());
			i=preparedStatement.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			
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
	
	public int update (User user) {
		System.out.println("正在更新元素");
		int i=-1;
		String sql = "UPDATE `user` SET `unm`= ? ,`pwd`= ? ,`rnm`= ? ,`unb`= ? ,`usx`= ? ,`unat`= ? ,"
				+ "`uadd`= ? ,`utel`= ? ,`uqq`= ? ,`umail`= ? ,`col`=  ? ,`maj`= ?  WHERE `uid`= ? ";
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		try {
			connection = super.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setObject(1,user.getUnm());
			preparedStatement.setObject(2,user.getPwd());
			preparedStatement.setObject(3,user.getRnm());
			preparedStatement.setObject(4,user.getUnb());
			preparedStatement.setObject(5,user.getUsx());
			preparedStatement.setObject(6,user.getUnat());
			preparedStatement.setObject(7,user.getUadd());
			preparedStatement.setObject(8,user.getUtel());
			preparedStatement.setObject(9,user.getUqq());
			preparedStatement.setObject(10,user.getUmail());
			preparedStatement.setObject(11,user.getCol());
			
			preparedStatement.setObject(12,user.getMaj());
			preparedStatement.setObject(13,Integer.valueOf(user.getUid()));
			i=preparedStatement.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			
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
	
	public User get(User user) {
		String sql ="SELECT   *  FROM    `test`.`user` "
				+ "WHERE `uid` = ?";
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
//			System.out.println("开始连接");
			connection = super.getConnection();
			statement = connection.prepareStatement(sql);
			statement.setObject(1, Integer.valueOf(user.getUid()));
			resultSet = statement.executeQuery();
//			System.out.println(book.getCol()+"  间隔  "+book.getBkid()+"  间隔  "+book.getGrd()+"  间隔  "+book.getMaj());
			while (resultSet.next()) {
//				System.out.println("找到书籍信息");
				user.setCol(resultSet.getString("col"));
				user.setMaj(resultSet.getString("maj"));
				user.setUmail(resultSet.getString("umail"));
				user.setUnat(resultSet.getString("unat"));
				user.setUnb(resultSet.getString("unb"));
				user.setUqq(resultSet.getString("uqq"));
				user.setUsx(resultSet.getString("usx"));
				user.setUtel(resultSet.getString("utel"));
				user.setUadd(resultSet.getString("uadd"));
				user.setRnm(resultSet.getString("rnm"));
				user.setUnm(resultSet.getString("unm"));
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
		return user;
	}
}
