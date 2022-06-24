package com.staceyboot.springbootdemo.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "members")
public class Members {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "members_id")
	private Integer membersId;
	
	@Column(name = "members_email")
	private String membersEmail;
	
	@Column(name = "members_phone")
	private String membersPhone;
	
	@Column(name = "members_account")
	private String membersAccount;

	@Column(name = "members_password")
	private String membersPassword;
	
	@Column(name = "members_name")
	private String membersName;
	
	@Column(name = "members_gender")
	private String membersGender;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@Column(name = "members_birthday")
	private Date membersBirthday;
	
	@Column(name = "members_address")
	private String membersAddress;
	
	public Integer getMembersId() {
		return membersId;
	}

	public void setMembersId(Integer membersId) {
		this.membersId = membersId;
	}

	public String getMembersEmail() {
		return membersEmail;
	}

	public void setMembersEmail(String membersEmail) {
		this.membersEmail = membersEmail;
	}

	public String getMembersPhone() {
		return membersPhone;
	}

	public void setMembersPhone(String membersPhone) {
		this.membersPhone = membersPhone;
	}

	public String getMembersAccount() {
		return membersAccount;
	}

	public void setMembersAccount(String membersAccount) {
		this.membersAccount = membersAccount;
	}

	public String getMembersPassword() {
		return membersPassword;
	}

	public void setMembersPassword(String membersPassword) {
		this.membersPassword = membersPassword;
	}

	public String getMembersName() {
		return membersName;
	}

	public void setMembersName(String membersName) {
		this.membersName = membersName;
	}

	public String getMembersGender() {
		return membersGender;
	}

	public void setMembersGender(String membersGender) {
		this.membersGender = membersGender;
	}

	public Date getMembersBirthday() {
		return membersBirthday;
	}

	public void setMembersBirthday(Date membersBirthday) {
		this.membersBirthday = membersBirthday;
	}

	public String getMembersAddress() {
		return membersAddress;
	}

	public void setMembersAddress(String membersAddress) {
		this.membersAddress = membersAddress;
	}



	
}
