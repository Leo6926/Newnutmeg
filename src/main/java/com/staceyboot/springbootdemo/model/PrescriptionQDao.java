package com.staceyboot.springbootdemo.model;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface PrescriptionQDao extends JpaRepository<PrescriptionQ, Integer> {

	@Query("select pq from PrescriptionQ pq where "
			+"CONCAT(pq.question_topic ,pq.question_answer)"
			+ " Like  %?1%"	)
	public Page<PrescriptionQ> findAll( String keyword, Pageable pageable); 
	
	
	
	
}
