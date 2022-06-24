package com.staceyboot.springbootdemo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.staceyboot.springbootdemo.model.Commoditys;
import com.staceyboot.springbootdemo.model.CommoditysDao;
import com.staceyboot.springbootdemo.model.CommoditysImg;
import com.staceyboot.springbootdemo.model.CommoditysImgDao;



@Service
@Transactional
public class CommoditysService {

	@Autowired
	private CommoditysDao dao;
	
	@Autowired
	private CommoditysImgDao imgDao;
	
	//Page 查全部
	public Page<Commoditys> getAllCommoditysPage(Integer pageNumber){
		PageRequest pgb = PageRequest.of(pageNumber-1, 4, Sort.by("commoditysId").ascending());
		Page<Commoditys> page = dao.findAll(pgb);
		
		return page;
	}
	
	//用 Id 查詢
	public Commoditys findCById(Integer cId) {
		Optional<Commoditys> option = dao.findById(cId);
		
		if(option.isPresent()) {
			Commoditys commoditys = option.get();
			return commoditys;
		}
		return null;
	}
	
	//存資料
	public void saveCommoditys(Commoditys commoditys) {
		dao.save(commoditys);
	}
	
	//用 Id 刪除
	public void delCById(Integer cId) {
		dao.deleteById(cId);
	}
	
	//存照片
	public void saveCImg(byte[] cImgByte, Integer fkCImg) {
		imgDao.insertCImg(cImgByte, fkCImg);
	}
	
	//用 Id 找照片
	public CommoditysImg findCImgById(Integer cImgId) {
		Optional<CommoditysImg> option = imgDao.findById(cImgId);
		
		if(option.isPresent()) {
			CommoditysImg commoditysImg = option.get();
			return commoditysImg;
		}
		return null;
	}
	
	//查類別
	public List<String> findCategory(){
		List<String> selectCategory = dao.selectCategory();
		
		return selectCategory;
	}
	
	//查商品字串
	public Page<Commoditys> findCbyKeyword(Integer pageNumber, String keyword) {
		PageRequest pgb = PageRequest.of(pageNumber-1, 4, Sort.by("commoditysId").ascending());
		Page<Commoditys> page = dao.findAll(pgb);
		
		if(keyword != null) {
			page = dao.selectCByKeyWords(keyword, pgb);
		}
		
		return page;
		
	}
	
	//用fkId刪圖片
	public void delCImgByFkCId(Integer fkCId) {
		imgDao.delCImgByFkId(fkCId);
	}
	
	
}
