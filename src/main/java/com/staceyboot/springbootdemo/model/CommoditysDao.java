package com.staceyboot.springbootdemo.model;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CommoditysDao extends JpaRepository<Commoditys, Integer> {

	//查詢類別
	@Query(value = "select distinct commoditys_category from commoditys", nativeQuery = true)
	public List<String> selectCategory();
	
	//依關鍵字查詢
	@Query(value = "SELECT c FROM Commoditys c WHERE CONCAT(c.commoditysCategory, c.commoditysTitle, c.commoditysIntroduce) LIKE %?1% ")
	public Page<Commoditys> selectCByKeyWords(String keyword, PageRequest pgb);
	
}


