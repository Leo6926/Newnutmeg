package com.staceyboot.springbootdemo.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ActivityPharmacyDao extends JpaRepository<ActivityPharmacy, Integer> {
	
	//查詢全部
	@Query(value = "select * from activity", nativeQuery = true)
	public List<ActivityPharmacy> findActivityPharmacyAll();

	
	
}
