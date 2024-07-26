package com.fpoly.entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "Mass")
@Data
public class Mass implements Serializable {
    @Id
    @Column(name = "MassID")
    private String massID;


    @Column(name = "MassName",columnDefinition = "NVARCHAR(MAX)")
    private String massName;

    @OneToMany(mappedBy = "mass")
    private List<Mass_Major> massMajors;
}
