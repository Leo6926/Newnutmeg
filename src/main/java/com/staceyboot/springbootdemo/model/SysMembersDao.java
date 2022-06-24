package com.staceyboot.springbootdemo.model;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface SysMembersDao extends JpaRepository<SysMembers, Integer> {
	
	@Query(value="select * from sys_members where sys_members_account = :sys_members_account", nativeQuery = true)
	public SysMembers selectMemberByAccout(@Param("sys_members_account") String password);
	
}
