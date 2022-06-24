package com.staceyboot.springbootdemo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.staceyboot.springbootdemo.model.Members;
import com.staceyboot.springbootdemo.model.MembersDao;



@Service
@Transactional
public class MembersService {

	@Autowired
	private MembersDao dao;
	
	public void saveMember(Members member) {
		dao.save(member);
	}
	
	public Members selectMemberByAccout(String password) {
		Members findMemberByAccout = dao.selectMemberByAccout(password);
		return findMemberByAccout;
	}
	
	public Members selectMemberById(Integer membersId) {
		Optional<Members> option = dao.findById(membersId);
		
		if(option.isPresent()) {
			Members findMemberById = option.get();
			return findMemberById;
		}
		
		return null;
	}
	
}
