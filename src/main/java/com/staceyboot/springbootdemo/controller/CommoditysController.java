package com.staceyboot.springbootdemo.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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

import com.staceyboot.springbootdemo.model.Commoditys;
import com.staceyboot.springbootdemo.model.CommoditysImg;
import com.staceyboot.springbootdemo.service.CommoditysService;



@Controller
public class CommoditysController {
	
	@Autowired
	private CommoditysService commoditysService;
	
	
//_商品列表	
	@GetMapping("/commoditysPage")
	public ModelAndView toCommoditysPage(ModelAndView mav, @RequestParam(name= "p", defaultValue = "1") Integer pageNumber) {
		
		Page<Commoditys> page = commoditysService.getAllCommoditysPage(pageNumber);
		mav.getModel().put("page", page);
		
		List<String> findCategory = commoditysService.findCategory();
		mav.getModel().put("findCategory", findCategory);
		
		mav.setViewName("commoditys/showCommoditys");
		return mav;
	}
	
//_商品詳細資訊
	@GetMapping("/commoditysDetail/{commoditysId}")
	public ModelAndView toCommoditysDetail(ModelAndView mav, @PathVariable("commoditysId") Integer commoditysId) {
		
		List<String> findCategory = commoditysService.findCategory();
		mav.getModel().put("findCategory", findCategory);
		
		Commoditys commodityData = commoditysService.findCById(commoditysId);
		mav.getModel().put("commodityData", commodityData);
		
		mav.setViewName("commoditys/commoditysDetail");
		return mav;
	}
	
//_下載圖片	
	@GetMapping("/commoditysImg/{commoditysImgId}")
	public ResponseEntity<byte []> downloadCImg(@PathVariable("commoditysImgId") Integer cImgId){
		CommoditysImg findCImgById = commoditysService.findCImgById(cImgId);
		byte[] cImgByIdFile = findCImgById.getCommoditysImgFile();
		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.IMAGE_JPEG);
		
		return new ResponseEntity<byte[]>(cImgByIdFile, headers, HttpStatus.OK);
	}

//_依關鍵字查詢
	@GetMapping("/selectCByKeyword")
	public ModelAndView selectByKeyword(ModelAndView mav, @RequestParam(name= "p", defaultValue = "1") Integer pageNumber, @RequestParam("cKeyword") String cKeyword) {
	
		Page<Commoditys> page = commoditysService.findCbyKeyword(pageNumber, cKeyword);
		mav.getModel().put("page", page);
		
		mav.getModel().put("cKeyword", cKeyword);
		List<String> findCategory = commoditysService.findCategory();
		mav.getModel().put("findCategory", findCategory);
		
		mav.setViewName("commoditys/showCommoditys");
		return mav;
	}
	
	
//後台------------------------------------------------------------------------------------------------------------------------------------	
	
	@GetMapping("/sysCommoditysPage")
	public ModelAndView toSysCommoditysPage(ModelAndView mav, @RequestParam(name= "p", defaultValue = "1") Integer pageNumber) {
		
		Page<Commoditys> page = commoditysService.getAllCommoditysPage(pageNumber);
		mav.getModel().put("page", page);
		
		List<String> findCategory = commoditysService.findCategory();
		mav.getModel().put("findCategory", findCategory);
		
		mav.setViewName("sysJsp/sysCommoditys/sysCommoditysPage");
		return mav;
	}

//_刪除商品
	@GetMapping("/sysCommoditysDel/{commoditysId}")
	public ModelAndView deleteCommoditys(ModelAndView mav, @PathVariable("commoditysId") Integer commoditysId) {
		
		commoditysService.delCById(commoditysId);
		
		return new ModelAndView("redirect:/sysCommoditysPage");
	}
	
//_修改商品
	@GetMapping("/sysCUpdate/{commoditysId}")
	public ModelAndView toUpdateCommoditys(ModelAndView mav, @PathVariable("commoditysId") Integer commoditysId) {
		
		Commoditys commodityData = commoditysService.findCById(commoditysId);
		mav.getModel().put("commodityData", commodityData);
		
		commoditysService.delCImgByFkCId(commoditysId);
		
		mav.setViewName("sysJsp/sysCommoditys/sysCommoditysUpdate");
		return mav;
	}
	
	@PostMapping("/postCUpdate")
	public ModelAndView updateCommoditys(ModelAndView mav, 
										 @RequestParam("commodityImg") List<MultipartFile> commodityImg,
										 @ModelAttribute("commodityData") Commoditys commodityData,
										 @RequestParam("commoditysTakedownTime") String StringTakedownTime) throws IOException {

		Date commoditysTakedownTime = null;
		
		SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
		
		try {
			commoditysTakedownTime = sdf.parse(StringTakedownTime);
		} catch (ParseException e) {
			// TODO 自動產生的 catch 區塊
			e.printStackTrace();
		}
		commodityData.setCommoditysTakedownTime(commoditysTakedownTime);
		commoditysService.saveCommoditys(commodityData);
		
		MultipartFile multipartFile = commodityImg.get(0);
		
		if(multipartFile.isEmpty()) {
			return new ModelAndView("redirect:sysCommoditysPage");
		}
		
		for (MultipartFile file : commodityImg) {
			commoditysService.saveCImg(file.getBytes(), commodityData.getCommoditysId());
		}
		
		return new ModelAndView("redirect:/sysCommoditysPage");
	}
	
//_新增商品
	@GetMapping("/addCommodity")
	public ModelAndView tosysCommoditysAdd(ModelAndView mav) {
		
		List<String> findCategory = commoditysService.findCategory();
		mav.getModel().put("findCategory", findCategory);	
		
		mav.getModel().put("newCommodityData", new Commoditys());
		mav.getModel().put("newCommodityImg", new CommoditysImg());
		
		mav.setViewName("sysJsp/sysCommoditys/sysCommoditysAdd");
		return mav;
	}
	
	
	@PostMapping("/postAddCommodity")
	public ModelAndView addCommoditys(ModelAndView mav,
									  @RequestParam("commodityImg") List<MultipartFile> commodityImg,
									  @ModelAttribute("newCommodityData") Commoditys newCommodityData, 
									  @RequestParam("commoditysTakedownTime") String StringTakedownTime) throws IOException {

		Date commoditysTakedownTime = null;
		
		SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
		
		try {
			commoditysTakedownTime = sdf.parse(StringTakedownTime);
		} catch (ParseException e) {
			// TODO 自動產生的 catch 區塊
			e.printStackTrace();
		}
		
		newCommodityData.setCommoditysTakedownTime(commoditysTakedownTime);
		
		commoditysService.saveCommoditys(newCommodityData);
		
		MultipartFile multipartFile = commodityImg.get(0);
		if(multipartFile.isEmpty()) {
			return new ModelAndView("redirect:sysCommoditysPage");
		}
		
		for (MultipartFile file : commodityImg) {
			commoditysService.saveCImg(file.getBytes(), newCommodityData.getCommoditysId());
		}
		
		return new ModelAndView("redirect:sysCommoditysPage");
	}
	
	
	
}
