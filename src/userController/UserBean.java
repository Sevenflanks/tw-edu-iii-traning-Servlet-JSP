package userController;

import java.sql.Timestamp;

public class UserBean {
	private String id;
	private String account;
	private String password;
	private String email;
	private Timestamp signUpDate;
	
	public UserBean() {
	}
	
	public UserBean(String id, String account, String password, String email, Timestamp signUpDate) {
		super();
		this.id = id;
		this.account = account;
		this.password = password;
		this.email = email;
		this.signUpDate = signUpDate;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Timestamp getSignUpDate() {
		return signUpDate;
	}
	public void setSignUpDate(Timestamp signUpDate) {
		this.signUpDate = signUpDate;
	}
	@Override
	public String toString() {
		return "[ "+id+" | "+account+" | "+password+" | "+email+" | "+signUpDate+" ]";
	}

}
