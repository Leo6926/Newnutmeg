package com.staceyboot.springbootdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.staceyboot.springbootdemo.model.ActivityPharmacy;
import com.staceyboot.springbootdemo.model.ActivityPharmacyDao;

@Service
public class ActivityPharmacyService {

	@Autowired
	private ActivityPharmacyDao dao;

	// 查詢
	public List<ActivityPharmacy> getAllActivityPharmacy() {
		return dao.findAll();
	}

	// 新增
	public void saveOrUpdateAp(ActivityPharmacy ap) {
		dao.save(ap);
	}

	// 刪除
	public void deleteApById(Integer id) {
		dao.deleteById(id);
	}

	// 查ID
	public ActivityPharmacy getActivityPharmacyById(Integer id) {
		return dao.findById(id).get();
	}

	// 修改
	public void update(ActivityPharmacy ap, Integer id) {
		dao.save(ap);
	}

	// 分頁
	public Page<ActivityPharmacy> findByPage(Integer pageNumber) {
		Pageable pgb = PageRequest.of(pageNumber - 1, 5, Sort.Direction.DESC, "date");
		Page<ActivityPharmacy> page = dao.findAll(pgb);
		return page;
	}
}
