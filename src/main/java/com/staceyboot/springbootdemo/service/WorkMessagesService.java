package com.staceyboot.springbootdemo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.staceyboot.springbootdemo.model.WorkMessages;
import com.staceyboot.springbootdemo.model.WorkMessagesDao;

@Service
@Transactional
public class WorkMessagesService {
	
	@Autowired
	private WorkMessagesDao dao;
	
	public void save(WorkMessages msg) {
		dao.save(msg);
	}
	
	public WorkMessages getFirstNewMsg() {
		return dao.findFirstByOrderByAddedDesc();
	}
	
	public Page<WorkMessages> findByPage(Integer pageNumber){
		Pageable pgb = PageRequest.of(pageNumber-1, 3,Sort.Direction.DESC, "added");
		Page<WorkMessages> page = dao.findAll(pgb);
		return page;
	}
	
	public WorkMessages findById(Integer id) {
		Optional<WorkMessages> option = dao.findById(id);
		
		if(option.isPresent()) {
			WorkMessages message = option.get();
			return message;
		}
		
		return null;
	}
	
	public void delete(Integer id) {
		dao.deleteById(id);
	}

}
