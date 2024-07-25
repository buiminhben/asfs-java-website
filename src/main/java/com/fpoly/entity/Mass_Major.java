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
@Table(name = "Mass_Major")
@Data
public class Mass_Major implements Serializable {
    @Id
    @Column(name = "Mass_Major")
    private int mass_major;

    @Column(name = "MajorId", insertable = false, updatable = false)
    private int majorId;

    @Column(name = "MassID")
    private String massID;

    @ManyToOne
    @JoinColumn(name = "MajorId")
    private Major major;

    @ManyToOne
    @JoinColumn(name = "MassID",insertable=false, updatable=false)
    private Mass mass;
}
