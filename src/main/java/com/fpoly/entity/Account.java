package com.fpoly.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="Account")
public class Account {
	@Id
	@Column(name = "AccountId")
	private int accountId;
	
	@Column(name="UserName",columnDefinition = "NVARCHAR(255)")
	private String userName;
	
	@Column(name="Password",columnDefinition = "NVARCHAR(255)")
	private String passWord;
}
