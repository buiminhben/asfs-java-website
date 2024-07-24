package com.fpoly.entity;

import java.io.Serializable;
import java.util.List;
import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "School")
@Data
@Getter @Setter
public class School implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "SchoolId")
    private int schoolId;

    @Column(name="Address", columnDefinition = "NVARCHAR(255)")
    private String address;
    
    @Column(name="shoolName", columnDefinition = "NVARCHAR(255)")
    private String schoolName;

    @Column(name="typeSchool", columnDefinition = "NVARCHAR(20)")
    private String typeSchool;

    @Column(name="Phone")
    private String phone;

    @Column(name="Website", columnDefinition = "NVARCHAR(255)")
    private String webSite;

    @Column(name="Information", columnDefinition = "NVARCHAR(255)")
    private String information;

    @OneToMany(mappedBy = "school")
    private List<Major_School> majorSchools;
}
