package com.fpoly.entity;

import java.io.Serializable;
import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "Major_School")
@Data
@Getter @Setter
public class Major_School implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Major_SchoolId")
    private int majorSchoolId; // Cột này là cột auto-increment

    @Column(name = "SchoolId")
    private int schoolId;

    @Column(name = "MajorId")
    private int majorId;

    @Column(name = "Point")
    private Double point;

    @ManyToOne
    @JoinColumn(name = "SchoolId", insertable = false, updatable = false)
    private School school;

    @ManyToOne
    @JoinColumn(name = "MajorId", insertable = false, updatable = false)
    private Major major;

   
}
