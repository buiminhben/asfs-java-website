package com.fpoly.entity;

import java.util.Date;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "News")
public class New {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "NewId")
    private int newId;

    @Column(name = "Title", columnDefinition = "NVARCHAR(255)")
    private String title;

    @Column(name = "AccountId")
    private int accountId;

    @Temporal(TemporalType.TIME) 
    @Column(name = "Date")
    private Date createDate = new Date();

    @Column(name = "Created", columnDefinition = "NVARCHAR(255)")  
    private String created;

    @Column(name = "Link", columnDefinition = "NVARCHAR(255)")
    private String link;

}
