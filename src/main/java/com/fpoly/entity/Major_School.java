package com.fpoly.entity;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name="Major_School")
@Data
public class Major_School implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Major_School")
    private int Major_School;

    @Column(name = "SchoolId", insertable = false, updatable = false)
    private int SchoolId;

    @Column(name = "MajorID", insertable = false, updatable = false)
    private int MajorID;

    @Column(name = "Point")
    private double Point;

    @ManyToOne
    @JoinColumn(name = "SchoolId")
    private School school;

    @ManyToOne
    @JoinColumn(name = "MajorID")
    private Major major;
}
