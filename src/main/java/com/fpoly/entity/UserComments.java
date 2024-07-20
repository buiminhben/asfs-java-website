package com.fpoly.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="UserComments")
public class UserComments {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "UserCommentId")
	private int userCommentId;
	
	@Column(name = "Name",columnDefinition = "NVARCHAR(255)")
	private String name;
	
	@Column(name = "Email",columnDefinition = "NVARCHAR(255)")
	private String email;
	
	@Column(name = "Text",columnDefinition = "NVARCHAR(255)")
	private String text;
	
	@Column(name = "Status")
	private Boolean status;
}
