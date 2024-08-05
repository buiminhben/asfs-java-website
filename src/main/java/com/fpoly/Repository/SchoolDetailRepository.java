package com.fpoly.Repository;

import org.springframework.data.jpa.repository.JpaRepository;


import com.fpoly.entity.SchoolDetails;

public interface SchoolDetailRepository extends JpaRepository<SchoolDetails, Integer> {

}
