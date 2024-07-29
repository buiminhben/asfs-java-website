package com.fpoly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fpoly.entity.School;

public interface SchoolDao extends JpaRepository<School, Integer> {

	   List<School> findTop3By();
}
