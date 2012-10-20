package org.npbool;


import com.opensymphony.xwork2.ActionSupport;
public class LoginAction extends ActionSupport {
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
	private String account;
	private String password;
	public String execute(){
		if("npbool".equalsIgnoreCase(account) && "mfs3786".equals(password)){
			return SUCCESS;
		} else {
			return LOGIN;
		}
	}
}
