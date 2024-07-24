package com.fpoly.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fpoly.entity.School;

public interface SchoolRepository extends JpaRepository<School, Integer> {

}
