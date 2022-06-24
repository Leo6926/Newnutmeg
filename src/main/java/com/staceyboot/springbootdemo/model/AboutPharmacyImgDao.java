package com.staceyboot.springbootdemo.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface AboutPharmacyImgDao extends JpaRepository<AboutPharmacyImg, Integer> {
	
	@Modifying
	@Query(value = "insert into about_pharmacy_img values(:imgByte, :fkAboutId)", nativeQuery = true)
	public void insertAboutPImg(@Param("imgByte") byte[] imgByte, @Param("fkAboutId") Integer fkAboutId);
	
	@Query(value = "select * from about_pharmacy_img where fk_aboutp_id = :fk_aboutp_id", nativeQuery = true)
	public List<AboutPharmacyImg> selectAPImgByFkAPId(@Param("fk_aboutp_id") Integer fkAboutPId);
	
	
	//	@Transactional 和 @Modifying 筆記:
	//	https://www.debugger.wiki/article/html/1555426800335686
	
	
	
}
