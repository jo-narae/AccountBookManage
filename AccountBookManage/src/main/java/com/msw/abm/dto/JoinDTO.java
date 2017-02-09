package com.msw.abm.dto;

public class JoinDTO {
	private String id;
	private String name;
	private String password;
	private String phoneNumber;
	private String email;
	private String cardinalNumber;
	
	public JoinDTO() {

	}

	public JoinDTO(String id, String name, String password, String phoneNumber, String email, String cardinalNumber) {
		super();
		this.id = id;
		this.name = name;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
