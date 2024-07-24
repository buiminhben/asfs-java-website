package com.fpoly.entity;

import java.io.Serializable;
import java.util.List;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name="Major")
@Data
public class Major implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MajorId")
    private int majorId;

    @Column(name = "MajorName")
    private String majorName;

    @OneToMany(mappedBy = "major")
    private List<Major_School> majorSchools;
}
