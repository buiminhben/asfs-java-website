package com.fpoly.entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name="Major")
@Data
public class Major implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MajorId")
    private int MajorId;

    @Column(name = "MajorName")
    private String majorName;

    @OneToMany(mappedBy = "major")
    private List<Major_School> majorSchools;

    @OneToMany(mappedBy = "major")
    private List<Mass_Major> massMajors;
}
