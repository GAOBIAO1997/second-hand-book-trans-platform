package com.kms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.kms.po.Person;



public class personDao extends BaseDao {
	public int addPersion (Person p) {
		int i=-1;
		String sql = "INSERT INTO `test`.`person`(`pnm`,`pwd`,`nm`) VALUES ( ? ,? , ? ) ";
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		try {
			connection = super.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setObject(1, p.getPnm());
			preparedStatement.setObject(2, p.getPwd());
			preparedStatement.setObject(3, p.getNm());
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

}
