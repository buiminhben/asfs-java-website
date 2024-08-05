package com.fpoly.dao;


import org.springframework.data.jpa.repository.JpaRepository;

import com.fpoly.entity.Message;

public interface MessageDao extends JpaRepository<Message, Long> {
}
