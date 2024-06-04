package com.emp_curdss.respority;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.emp_curdss.model.emp;

@Repository
public interface emp_repo extends  JpaRepository<emp, Integer>{
	emp findByEmail(String email);
}
