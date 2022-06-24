package com.staceyboot.springbootdemo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.staceyboot.springbootdemo.model.SysMembers;
import com.staceyboot.springbootdemo.model.SysMembersDao;

@Service
@Transactional
public class SysMembersService {

	@Autowired
	private SysMembersDao dao;

	public void saveMember(SysMembers member) {
		dao.save(member);
	}

	public SysMembers selectMemberByAccout(String password) {
		SysMembers findMemberByAccout = dao.selectMemberByAccout(password);
		return findMemberByAccout;
	}

	public SysMembers selectMemberById(Integer id) {
		Optional<SysMembers> option = dao.findById(id);

		if (option.isPresent()) {
			SysMembers findMemberById = option.get();
			return findMemberById;
		}

		return null;
	}

}
