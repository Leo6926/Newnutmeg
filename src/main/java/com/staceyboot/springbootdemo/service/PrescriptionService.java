package com.staceyboot.springbootdemo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.staceyboot.springbootdemo.model.PrescriptionQ;
import com.staceyboot.springbootdemo.model.PrescriptionQDao;

@Service
public class PrescriptionService {

	@Autowired
	private PrescriptionQDao pDao;
	
	public void save(PrescriptionQ psq) {
		pDao.save(psq);
	} 
//	public PrescriptionQ getFirstNewPsq() {
//		return pDao.findFirstByOrderByIdDesc();
//	}
	//顯示每頁三筆資料
	public Page<PrescriptionQ> findByPage(Integer pageNumber, String keyword){
		Pageable pgb = PageRequest.of(pageNumber-1,5 ,Sort.by("id").ascending());
		
		Page<PrescriptionQ> findAll = pDao.findAll(keyword,pgb); 
//		if(findAll.isEmpty()==true) {
//			return "";
//		}else {
//			return findAll;
//		}
		if(keyword != null) {
			return findAll; 
		}
		return pDao.findAll(pgb);
	}
	public PrescriptionQ getQuestionById(Integer id) {
		Optional<PrescriptionQ> optional = pDao.findById(id);
		if(optional.isPresent()) {
			PrescriptionQ resPt = optional.get();
			return resPt;
		}
		return null;
	}
	public void delete(Integer id) {
		pDao.deleteById(id);
	}
	
	
	
	
	
}
