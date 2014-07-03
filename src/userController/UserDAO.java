package userController;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class UserDAO {
	DataSource ds = null;
	Connection conn = null;
	
	private final String SELECT_ALL = "SELECT * FROM Member";
	private final String SELECT_BY_ACCOUNT = "SELECT * FROM Member WHERE userAccount = ?";
	private final String INSERT_NEW_ACCOUNT = "INSERT INTO Member VALUES(?, ?, ?, getdate())";
	
//	private void getConnection(){
//		try {
//			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//			conn = DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;DatabaseName=LBRtest","sa", "passw0rd");
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}

	public UserDAO(){
		try {
			Context context = new InitialContext();
			ds = (DataSource) context.lookup("java:comp/env/jdbc/LBRtest");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	private void getConnection(){
		try {
			conn = ds.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<UserBean> findAll() {
		List<UserBean> users = new ArrayList<UserBean>();
		PreparedStatement stmt = null;
		ResultSet rset = null;
		try {
			this.getConnection();
			stmt = conn.prepareStatement(SELECT_ALL);
			rset = stmt.executeQuery();
			if (rset.next()) {
				UserBean user = new UserBean(); 
				user.setId(rset.getString(1));
				user.setAccount(rset.getString(2));
				user.setPassword(rset.getString(3));
				user.setEmail(rset.getString(4));
				user.setSignUpDate(new Timestamp(rset.getTime(5).getTime()));
				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return users;
	}
	
	public UserBean findById(String Account) {
		UserBean user = null;
		PreparedStatement stmt = null;
		ResultSet rset = null;
		try {
			this.getConnection();
			stmt = conn.prepareStatement(SELECT_BY_ACCOUNT);
			stmt.setString(1, Account);
			rset = stmt.executeQuery();
			if (rset.next()) {
				user = new UserBean(); 
				user.setId(rset.getString(1));
				user.setAccount(rset.getString(2));
				user.setPassword(rset.getString(3));
				user.setEmail(rset.getString(4));
				user.setSignUpDate(new Timestamp(rset.getTime(5).getTime()));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return user;
	}
	
	public int insertNewAccount(UserBean user) {
		PreparedStatement stmt = null;
		ResultSet rset = null;
		int result = 0;
		try {
			this.getConnection();
			stmt = conn.prepareStatement(INSERT_NEW_ACCOUNT);
			stmt.setString(1, user.getAccount());
			stmt.setString(2, user.getPassword());
			stmt.setString(3, user.getEmail());
			result = stmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}

}
