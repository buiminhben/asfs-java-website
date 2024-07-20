package com.fpoly.entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "School")
@Data
public class School implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "SchoolId")
    private int schoolId;

    @Column(name="Address",columnDefinition = "NVARCHAR(255)")
    private String address;

    @Column(name="Phone")
    private String phone;

    @Column(name="Website",columnDefinition = "NVARCHAR(255)")
    private String webSite;

    @Column(name="Information",columnDefinition = "NVARCHAR(255)")
    private String Information;

    @OneToOne(mappedBy = "school")
    private SchoolDetails schoolDetails;

    @OneToMany(mappedBy = "school")
    private List<Major_School> majorSchools;
}
