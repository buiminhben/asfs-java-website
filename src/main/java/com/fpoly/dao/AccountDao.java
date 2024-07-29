package com.fpoly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.fpoly.entity.Account;

public interface AccountDao extends JpaRepository<Account, Integer>{
	Account findByUserName(String userName);

}
