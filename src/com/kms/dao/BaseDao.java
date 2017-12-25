package com.kms.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseDao {

    private static final String DriverName ="com.mysql.jdbc.Driver";
    private static final String URL ="jdbc:mysql://localhost:3306/test";
    private static final String UserName ="root";
    private static final String Password ="root";

    //此操作只执行一次
    static {
//    	System.out.println("开始加载");
        try {
            Class.forName(DriverName);
        } catch (ClassNotFoundException e) {
            System.err.println("加载驱动失败：" + e.getMessage());
        }
    }
    
	   public Connection getConnection(){
		   Connection connection = null;
			try {
				connection = DriverManager.getConnection(URL, UserName, Password);
			} catch (SQLException e) {
				e.printStackTrace();
			}	 
			return connection;
	}
}
