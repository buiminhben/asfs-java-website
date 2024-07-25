package com.fpoly.entity;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name="SchoolDetails")
@Data
public class SchoolDetails implements Serializable {
    @Id
    @Column(name = "DetailId")
    private int DetailID;

    @Column(name = "Major",columnDefinition = "NVARCHAR(MAX)")
    private String Major;

    @Column(name="SchoolId")
    private int schoolId;

    @OneToOne
    @JoinColumn(name = "SchoolId", insertable = false, updatable = false)
    private School school;
}
