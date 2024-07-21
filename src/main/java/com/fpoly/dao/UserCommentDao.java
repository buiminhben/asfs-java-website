package com.fpoly.dao;

import com.fpoly.entity.UserComments;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserCommentDao extends JpaRepository<UserComments, Integer> {
	
	List<UserComments> findByName(String name);
	
	
	UserComments findByUserCommentId(Integer userCommentId);
	

}
