package com.fpoly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fpoly.entity.Major;

public interface MajorDao extends JpaRepository<Major, Integer>  {

}
