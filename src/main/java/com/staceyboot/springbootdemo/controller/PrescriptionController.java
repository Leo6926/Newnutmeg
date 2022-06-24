
package com.staceyboot.springbootdemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.staceyboot.springbootdemo.model.PrescriptionQ;
import com.staceyboot.springbootdemo.service.PrescriptionService;

@Controller
public class PrescriptionController {

	@Autowired
	private PrescriptionService service;
	
	@GetMapping("/question/add")     // ModelAndView 一定要寫在第一個參數
	public ModelAndView goAddQuestion(ModelAndView mav) {
		PrescriptionQ psq = new PrescriptionQ();
		// model.addAttribute("名子",物件)
		mav.getModel().put("prescriptionQs", psq);
		mav.setViewName("/sysJsp/sysAddQuestion");
//		PrescriptionQ lastestQuestion = service.getFirstNewPsq();
//		mav.getModel().put("lastestQuestion", lastestQuestion);
		return mav;
	}
	
	@PostMapping("/question/add")
	public ModelAndView postQuestion(ModelAndView mav, @ModelAttribute(name="prescriptionQs") PrescriptionQ psq) {
		service.save(psq);
		PrescriptionQ newPsq = new PrescriptionQ();
		mav.getModel().put("prescriptionQs", newPsq);
	//	//回傳最新一筆資料
	//	PrescriptionQ lastestQuestion = service.getFirstNewPsq();
	//	mav.getModel().put("lastestQuestion", lastestQuestion);
		mav.setViewName("/sysJsp/sysAddQuestion");
		return mav;
	}
	
	
	
	//管理者
	@GetMapping("/sysPrescriptionQA")
	public String  viewQuestion(Model model,
			 @RequestParam(name="p",defaultValue="1") Integer pageNumber,
			 @Param("keyword") String keyword) {
		Page<PrescriptionQ> page = service.findByPage(pageNumber,keyword);
		model.addAttribute("page", page);
		model.addAttribute("keyword", keyword);
		return "/sysJsp/sysPrescriptionQA";
	}
	
	//使用者
	@GetMapping("/question/prescriptionQA")
	public String  viewQuestion2(Model model,
			 @RequestParam(name="p",defaultValue="1") Integer pageNumber,
			 @Param("keyword") String keyword) {
		Page<PrescriptionQ> page = service.findByPage(pageNumber,keyword);
		model.addAttribute("page", page);
		return "/prescriptionQA";
	}
	
	
	
	//＠PathVariable是以變數作為mapping URL
	@GetMapping("/deleteQuestion/{id}")
	public String deleteQuestion(@PathVariable("id") Integer id) {
		service.delete(id);
		return "redirect:/sysPrescriptionQA";
	}
	
	//編輯/修改
	@GetMapping("/editQuestion/{id}")
	public ModelAndView editQuestion(ModelAndView mav,@PathVariable("id") Integer id) {
		PrescriptionQ resPt  = service.getQuestionById(id);
		mav.getModel().put("prescriptionQ", resPt);
		mav.setViewName("sysJsp/sysEditQuestion");
		return mav;
	}
	
	@PostMapping("/postEditQuestion")
	public ModelAndView postEditQuestion(ModelAndView mav ,@ModelAttribute("prescriptionQ") PrescriptionQ psq) {
		System.out.println(psq.getid()+", "+psq.getQuestion_topic());
		service.save(psq);
		return new ModelAndView("redirect:/sysPrescriptionQA");
	}
	
	
}
