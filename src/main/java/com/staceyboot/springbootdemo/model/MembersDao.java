package com.staceyboot.springbootdemo.model;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface MembersDao extends JpaRepository<Members, Integer> {
	
	@Query(value="select * from members where members_account = :members_account", nativeQuery = true)
	public Members selectMemberByAccout(@Param("members_account") String password);
	
}
