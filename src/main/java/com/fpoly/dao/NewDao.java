package com.fpoly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fpoly.entity.New;

public interface NewDao extends JpaRepository<New, Integer> {
}
