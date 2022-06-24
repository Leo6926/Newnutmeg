package com.staceyboot.springbootdemo.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PharmacyHistoryImgDao extends JpaRepository<PharmacyHistoryImg, Integer> {

	
	
}
