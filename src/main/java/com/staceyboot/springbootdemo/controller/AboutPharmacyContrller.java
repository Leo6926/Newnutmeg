package com.staceyboot.springbootdemo.controller;


import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.staceyboot.springbootdemo.model.AboutPharmacy;
import com.staceyboot.springbootdemo.model.AboutPharmacyImg;
import com.staceyboot.springbootdemo.model.PharmacyHistory;
import com.staceyboot.springbootdemo.service.AboutPharmacyService;
import com.staceyboot.springbootdemo.service.PharmacyHistoryService;



@Controller
public class AboutPharmacyContrller {

	@Autowired
	private AboutPharmacyService aboutPService;
	
	@Autowired
	private PharmacyHistoryService pHService;
	
	
//使用者介面_關於藥局	
	@GetMapping("/aboutPharmacy")
	public ModelAndView aboutPharmacyListPage(ModelAndView mav, @RequestParam(name="p", defaultValue="1") Integer pageNumber) {
		
		Page<AboutPharmacy> page = aboutPService.getAllAboutPharmacyPage(pageNumber);
		List<AboutPharmacyImg> fAPImgByFkId = aboutPService.findAboutPImgByFkId(pageNumber);
		
		mav.getModel().put("page", page);
		mav.getModel().put("fAPImgByFkId", fAPImgByFkId);
	//----------------藥局沿革
		List<PharmacyHistory> allPHList = pHService.getAllPHList();
		
		mav.getModel().put("pHList", allPHList);
		
		mav.setViewName("aboutPharmacy/showAboutPharmacy");
		return mav;
	}
	
//_下載圖片
	@GetMapping("aboutPImg/{abountPImgId}")
	public ResponseEntity<byte []> downloadImg(@PathVariable("abountPImgId") Integer abountPImgId){
		
		AboutPharmacyImg findAboutPImgById = aboutPService.findAboutPImgById(abountPImgId);
		byte[] aboutPImgByIdFile = findAboutPImgById.getAboutPImgFile();
		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.IMAGE_JPEG);
		
		return new ResponseEntity<byte[]>(aboutPImgByIdFile, headers, HttpStatus.OK);
	}
	
//----------------------------------------------------------------------------------------------------------------------------------

//後台介面_關於藥局
	@GetMapping("/sysAboutPharmacy")
	public ModelAndView sysAboutPListPage(ModelAndView mav, @RequestParam(name="p", defaultValue="1") Integer pageNumber) {
		
		Page<AboutPharmacy> page = aboutPService.getAllAboutPharmacyPage(pageNumber);
		mav.getModel().put("page", page);
	//----------------藥局沿革
		List<PharmacyHistory> allPHList = pHService.getAllPHList();
		mav.getModel().put("allPHList", allPHList);
		
		mav.setViewName("sysJsp/sysAboutPharmacy/sysAboutPharmacy");
		return mav;
	}
	
//_修改
	@GetMapping("/sysAboutPUpdate/{aboutPId}")
	public ModelAndView findSysAboutP(ModelAndView mav, @PathVariable("aboutPId") Integer aboutPId) {
		
		AboutPharmacy findAboutPByIdData = aboutPService.findAboutPById(aboutPId);
		mav.getModel().put("findAboutPByIdData", findAboutPByIdData);		
		
		mav.setViewName("sysJsp/sysAboutPharmacy/sysAboutPUpdate");
		return mav;
	}
	
	@PostMapping("/postSysAboutPUpdate")
	public ModelAndView updateAboutP(ModelAndView mav, @ModelAttribute("findAboutPByIdData") AboutPharmacy AboutPData) {
		
		aboutPService.saveAboutPData(AboutPData);
		
		return new ModelAndView("redirect:sysAboutPharmacy");
	}

//_刪除
	@GetMapping("/sysAboutPDelete/{aboutPId}")
	public ModelAndView deleteAboutP(ModelAndView mav, @PathVariable("aboutPId") Integer aboutPId) {
		
		aboutPService.delAboutPDataById(aboutPId);
		
		//redirect + "/" 是回上一層
		return new ModelAndView("redirect:/sysAboutPharmacy");
	}
	
//_新增
	@GetMapping("/sysAboutPAdd/{aboutPId}")
	public ModelAndView toAddAboutP(ModelAndView mav, @PathVariable("aboutPId") Integer aboutPId) {
		mav.getModel().put("aboutPId", aboutPId);
		mav.getModel().put("newAboutPdata", new AboutPharmacy());
		mav.getModel().put("newAboutPImg", new AboutPharmacyImg());
		
		mav.setViewName("sysJsp/sysAboutPharmacy/sysAboutPAdd");
		return mav;
	}
		
	@PostMapping("/postSysAboutPAdd")
	public ModelAndView addAboutP(ModelAndView mav, 
								  @ModelAttribute("newAboutPdata") AboutPharmacy aboutPData,
								  @RequestParam("aboutPImg") List<MultipartFile> aboutPImg) throws IOException {
		
		aboutPService.saveAboutPData(aboutPData);
		
		//取第一個判斷
		MultipartFile multipartFile = aboutPImg.get(0);
		if(multipartFile.isEmpty()) {
			return new ModelAndView("redirect:sysAboutPharmacy");
		}
		
		for (MultipartFile file : aboutPImg) {
			aboutPService.saveAboutPImg(file.getBytes(), aboutPData.getAboutPId());
		}		

	return new ModelAndView("redirect:sysAboutPharmacy");
	}
	
	
	
//後台介面_藥局沿革
	@GetMapping("/sysPharmacyHistory")
	public ModelAndView sysPharmacyHistoryPage (ModelAndView mav) {
		
		List<PharmacyHistory> allPHList = pHService.getAllPHList();
		//暫定只有一筆資料，只可修改
		PharmacyHistory pHData = allPHList.get(0);
		mav.getModel().put("pHData",pHData);
		
		mav.setViewName("sysJsp/sysAboutPharmacy/sysPharmacyHistory");
		return mav;
	}
	
	@PostMapping("/postSysPH")
	public ModelAndView updatePH(ModelAndView mav, @ModelAttribute("pHData") PharmacyHistory pHData, List<MultipartFile> pHImg ) {

		pHService.savePH(pHData);
		
		return new ModelAndView("redirect:sysIndex");
	}
	
	
}
