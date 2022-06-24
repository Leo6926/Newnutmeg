package com.staceyboot.springbootdemo.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CommoditysImgDao extends JpaRepository<CommoditysImg, Integer>{

	@Modifying
	@Query(value = "insert into commoditys_img values(:imgByte, :fkCImg)", nativeQuery = true)
	public void insertCImg(@Param("imgByte") byte[] imgByte, @Param("fkCImg") Integer fkCImg);
	
	@Modifying
	@Query(value = "delete commoditys_img where fk_commoditys_id = :fkId", nativeQuery = true)
	public void delCImgByFkId(@Param("fkId") Integer fkId);
	
}
