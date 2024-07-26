package com.fpoly.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fpoly.entity.Major_School;
import com.fpoly.entity.School;

public interface MajorSchoolRepository extends JpaRepository<Major_School, String>{

}
