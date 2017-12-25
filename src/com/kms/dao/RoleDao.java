package com.kms.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kms.po.Role;



public class RoleDao extends BaseDao {
	public List<Role> lrs() {
		List<Role> lrs = new ArrayList<Role>();
		String sql = "  SELECT    `pwd`, `pnm`, `nm` FROM  `test`.`person` ";
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			connection = getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				Role role = new Role();
				role.setPwd(resultSet.getString("pwd"));
				role.setPnm(resultSet.getString("pnm"));
				role.setNm(resultSet.getString("nm"));
				lrs.add(role);
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

}
