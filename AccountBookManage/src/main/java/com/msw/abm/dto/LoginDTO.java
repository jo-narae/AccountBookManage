package com.msw.abm.dto;

public class LoginDTO {
	private String id;
	private String password;
	private String _csrf;
	
	public LoginDTO() {
	}

	public LoginDTO(String id, String password, String _csrf) {
		this.id = id;
		this.password = password;
		this._csrf = _csrf;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String get_csrf() {
		return _csrf;
	}
	public void set_csrf(String _csrf) {
		this._csrf = _csrf;
	}
	
	
}
