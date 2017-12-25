package com.kms.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kms.po.Booksale;
import com.kms.po.Role;
import com.kms.po.User;

public class BookSaleDao extends BaseDao{
	
	public int add (Booksale booksale) {
		System.out.println("调用add方法");
		int i=-1;
		System.out.println("uid in bsd:"+booksale.getUid()+"bkid:"+booksale.getBkid()+"sup:"+booksale.getSup()+"uptm:"+booksale.getUptm());
		String sql = "INSERT INTO `test`.`sb`"
				+ "(`uid`,`bkid`,`sup`,`uptm`,`msg`,`prc` ) "
				+ "	VALUES ( ? ,?  ,?  ,? ,? ,? )";
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		try {
			System.out.println("开始插入值");
			connection = super.getConnection();
			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setObject(1,Integer.valueOf(booksale.getUid()));
			
			preparedStatement.setObject(2,Integer.valueOf(booksale.getBkid()));
			
			preparedStatement.setObject(3,Integer.valueOf(booksale.getSup()));
			
			preparedStatement.setObject(4,booksale.getUptm());
			
			preparedStatement.setObject(5,booksale.getMsg());
			
			preparedStatement.setObject(6,Float.parseFloat(booksale.getPrc()));
			
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
	
	public int insert (Booksale booksale,String dwtm) {
//		System.out.println("调用add方法");
		int i=-1;
		String sql = "INSERT INTO `test`.`sbed`"
				+ "(`uid`,`bkid`,`dwtm`,`uptm` ) "
				+ "	VALUES ( ? ,?  ,?  ,?  )";
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		try {
			System.out.println("开始插入值");
			connection = super.getConnection();
			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setObject(1,Integer.valueOf(booksale.getUid()));
			
			preparedStatement.setObject(2,Integer.valueOf(booksale.getBkid()));
			
			preparedStatement.setObject(3,dwtm);
			
			preparedStatement.setObject(4,booksale.getUptm());
			
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
	
	public List<Booksale> findall(int bkid) {
		List<Booksale> lrs = new ArrayList<Booksale>();
		Booksale booksale = null;
		String sql = "  SELECT   `uid`,  `bkid`,`sup`, `uptm`, `msg`, `prc`  FROM    `test`.`sb` " +
		"   WHERE bkid = ?  ";
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			statement.setObject(1, bkid);
			resultSet = statement.executeQuery();

			while (resultSet.next()) {
//				System.out.println("查询出结果");
			    booksale = new Booksale();
				booksale.setUid(resultSet.getInt("uid")+"");
				booksale.setBkid(resultSet.getInt("bkid")+"");
				booksale.setSup(resultSet.getInt("sup")+"");
				booksale.setMsg(resultSet.getString("msg"));
				booksale.setPrc(resultSet.getFloat("prc")+"");
				booksale.setUptm(resultSet.getString("uptm"));
				
//				System.out.println(booksale.getBkid()+"  间隔  "+booksale.getPrc()+"  间隔  "+booksale.getUid()+"  间隔  "+booksale.getMsg()+"   间隔  "+booksale.getUptm()+"  间隔      "+booksale.getSup());
				lrs.add(booksale);
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
	
	public List<Booksale> lrs(String uid) {
		List<Booksale> lrs = new ArrayList<Booksale>();
		Booksale booksale = null;
		String sql = "  SELECT   `sid`,`uid`,  `bkid`,`sup`, `uptm`, `msg`, `prc`  FROM    `test`.`sb` " +
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
			    booksale = new Booksale();
			    booksale.setSid(resultSet.getInt("sid")+"");
				booksale.setUid(resultSet.getInt("uid")+"");
				booksale.setBkid(resultSet.getInt("bkid")+"");
				booksale.setSup(resultSet.getInt("sup")+"");
				booksale.setMsg(resultSet.getString("msg"));
				booksale.setSup(resultSet.getInt("sup")+"");
				booksale.setPrc(resultSet.getFloat("prc")+"");
				booksale.setUptm(resultSet.getString("uptm"));
				
//				System.out.println(booksale.getBkid()+"  间隔  "+booksale.getPrc()+"  间隔  "+booksale.getUid()+"  间隔  "+booksale.getMsg()+"   间隔  "+booksale.getUptm()+"  间隔      "+booksale.getSup());
				lrs.add(booksale);
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
	
	public int update (Booksale booksale) {
		System.out.println("正在更新元素");
		int i=-1;
		String sql = "UPDATE `sb` SET `msg`= ? ,`prc`= ? WHERE `sid`= ? ";
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		try {
			connection = super.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setObject(1,booksale.getMsg());
			preparedStatement.setObject(2,Float.parseFloat(booksale.getPrc()));
			preparedStatement.setObject(3,Integer.valueOf(booksale.getSid()));
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
	
	public List<Booksale> lrs(Booksale booksale) {
		List<Booksale> lrs = new ArrayList<Booksale>();
		String sql = "  SELECT   `sid`,`uid`,  `bkid`,`sup`, `uptm`, `msg`, `prc` FROM    `test`.`sb`  WHERE `uid` =  ? ";
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			statement.setObject(1, Integer.valueOf(booksale.getUid()));
			resultSet = statement.executeQuery();

			while (resultSet.next()) {
				System.out.println("正在查找");
				booksale.setSid(resultSet.getInt("sid")+"");
				booksale.setUid(resultSet.getInt("uid")+"");
				booksale.setBkid(resultSet.getInt("bkid")+"");
				booksale.setSup(resultSet.getInt("sup")+"");
				booksale.setMsg(resultSet.getString("msg"));
				booksale.setSup(resultSet.getInt("sup")+"");
				booksale.setPrc(resultSet.getFloat("prc")+"");
				booksale.setUptm(resultSet.getString("uptm"));
				lrs.add(booksale);
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
	
	public Booksale findone(int sid) {
		Booksale booksale = null;
		String sql = "  SELECT   `uid`,  `bkid`,`sup`, `uptm`, `msg`, `prc`  FROM    `test`.`sb` " +
		"   WHERE sid = ?  ";
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			statement.setObject(1, sid);
			resultSet = statement.executeQuery();

			while (resultSet.next()) {
//				System.out.println("查询出结果");
			    booksale = new Booksale();
				booksale.setUid(resultSet.getInt("uid")+"");
				booksale.setBkid(resultSet.getInt("bkid")+"");
				booksale.setSup(resultSet.getInt("sup")+"");
				booksale.setMsg(resultSet.getString("msg"));
				booksale.setPrc(resultSet.getFloat("prc")+"");
				booksale.setUptm(resultSet.getString("uptm"));
				System.out.println("bookmsg in dao:"+booksale.getMsg());
				break;
//				System.out.println(booksale.getBkid()+"  间隔  "+booksale.getPrc()+"  间隔  "+booksale.getUid()+"  间隔  "+booksale.getMsg()+"   间隔  "+booksale.getUptm()+"  间隔      "+booksale.getSup());
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
		return booksale;
	}
	
	public Booksale findsid(String sid) {
		Booksale booksale = null;
		String sql = "  SELECT   `uid`,  `bkid`,`sup`, `uptm`, `msg`, `prc`  FROM    `test`.`sb` " +
		"   WHERE sid = ?  ";
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			statement.setObject(1, Integer.valueOf(sid));
			resultSet = statement.executeQuery();

			while (resultSet.next()) {
//				System.out.println("查询出结果");
			    booksale = new Booksale();
				booksale.setUid(resultSet.getInt("uid")+"");
				booksale.setBkid(resultSet.getInt("bkid")+"");
				booksale.setSup(resultSet.getInt("sup")+"");
				booksale.setMsg(resultSet.getString("msg"));
				booksale.setPrc(resultSet.getFloat("prc")+"");
				booksale.setUptm(resultSet.getString("uptm"));
				break;
//				System.out.println(booksale.getBkid()+"  间隔  "+booksale.getPrc()+"  间隔  "+booksale.getUid()+"  间隔  "+booksale.getMsg()+"   间隔  "+booksale.getUptm()+"  间隔      "+booksale.getSup());
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
		return booksale;
	}

	public int delete (String sid) {
		System.out.println("正在更新元素");
		int i=-1;
		String sql = "DELETE FROM `test`.`sb`  WHERE `sid`=  ? ";
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		try {
			connection = super.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setObject(1,Integer.valueOf(sid));
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
