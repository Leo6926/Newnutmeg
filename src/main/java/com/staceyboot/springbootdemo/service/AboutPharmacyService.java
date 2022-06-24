package com.staceyboot.springbootdemo.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.staceyboot.springbootdemo.model.AboutPharmacy;
import com.staceyboot.springbootdemo.model.AboutPharmacyDao;
import com.staceyboot.springbootdemo.model.AboutPharmacyImg;
import com.staceyboot.springbootdemo.model.AboutPharmacyImgDao;

//		ascending()		->	舊到新
//		descending()	->	新到舊


@Service
@Transactional
public class AboutPharmacyService {

	@Autowired
	private AboutPharmacyDao dao;
	
	@Autowired
	private AboutPharmacyImgDao imgDao;
	
	//page 查全部
	public Page<AboutPharmacy> getAllAboutPharmacyPage(Integer pageNumber){
		Pageable pgb = PageRequest.of(pageNumber-1, 1, Sort.by("aboutPId").ascending());
		Page<AboutPharmacy> page = dao.findAll(pgb);
		
		return page;
	}
	
	//用 Id 查單個
	public AboutPharmacy findAboutPById(Integer aboutPId) {
		Optional<AboutPharmacy> option = dao.findById(aboutPId);
		
		if(option.isPresent()) {
			AboutPharmacy aboutPByIdData = option.get();
			return aboutPByIdData;
		}
		
		return null;
	}
	
	//存資料
	public void saveAboutPData(AboutPharmacy AboutPData) {
		dao.save(AboutPData);	
	}
	
	//用 Id 刪資料
	public void delAboutPDataById(Integer aboutPId) {
		dao.deleteById(aboutPId);
	}
	
//--------------------------------------------------------------------------------------------	
	
	//存照片
	public void saveAboutPImg(byte[] aboutPImgByte, Integer aboutPId) {
		imgDao.insertAboutPImg(aboutPImgByte, aboutPId);
	}
	
//	//用 fkId 找照片
//	public List<byte[]> findAboutPImgByFkId(Integer FkAboutId){
//		List<byte[]> aboutPImgFileByFkId = imgDao.selectAPImgByFkAPId(FkAboutId);
//		
//		return aboutPImgFileByFkId;
//	}
	
	//用 fkId 找資料
	public List<AboutPharmacyImg> findAboutPImgByFkId(Integer FkAboutId){
		List<AboutPharmacyImg> aboutPImgFileByFkId = imgDao.selectAPImgByFkAPId(FkAboutId);
		
		return aboutPImgFileByFkId;
	}
	
	//用 Id 找照片
	public AboutPharmacyImg findAboutPImgById(Integer aboutPImgId) {
		Optional<AboutPharmacyImg> option = imgDao.findById(aboutPImgId);
		
		if(option.isPresent()) {
			AboutPharmacyImg aboutPharmacyImg = option.get();
			return aboutPharmacyImg;
		}
		
		return null;
	}
	

	
	
}

