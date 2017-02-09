package com.msw.abm.dto;

public class JoinDTO {
	private String id;
	private String userName;
	private String password;
	private String phoneNumber;
	private String email;
	private String cardinalNumber;
	
	public JoinDTO() {

	}

	public JoinDTO(String id, String userName, String password, String phoneNumber, String email,
			String cardinalNumber) {
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.cardinalNumber = cardinalNumber;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCardinalNumber() {
		return cardinalNumber;
	}

	public void setCardinalNumber(String cardinalNumber) {
		this.cardinalNumber = cardinalNumber;
	}

}
