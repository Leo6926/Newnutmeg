package com.staceyboot.springbootdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.staceyboot.springbootdemo.model.ActivityPharmacy;
import com.staceyboot.springbootdemo.service.ActivityPharmacyService;

@Controller
public class ActivityPharmacyController {

	@Autowired
	private ActivityPharmacyService service;

	// list 使用者
	@GetMapping("/firstPage")
	public String viewMessagesPage(Model model, @RequestParam(name = "p", defaultValue = "1") Integer pageNumber) {
		Page<ActivityPharmacy> page = service.findByPage(pageNumber);
		model.addAttribute("page", page);
		return "firstPage";
	}
	
	
	@GetMapping("/userText/{id}")
	public ModelAndView getById(ModelAndView mav, @PathVariable("id") Integer id) {
		ActivityPharmacy getActivityPharmacyById = service.getActivityPharmacyById(id);
		mav.getModel().put("getActivityPharmacyById", getActivityPharmacyById);
		mav.setViewName("userText");
		return mav;
	}
	

//================================================================================

	// list
	@GetMapping("/ap")
	private ModelAndView allActivityPharmacy(ModelAndView mav) {
		List<ActivityPharmacy> ap = service.getAllActivityPharmacy();
		mav.getModel().put("ap", ap);
		mav.setViewName("ap");
		return mav;
	}

	// delete
	@GetMapping("/delete/{id}")
	public ModelAndView deleteAp(ModelAndView mav, @PathVariable("id") Integer id) {
		service.deleteApById(id);
		return new ModelAndView("redirect:/ap");
	}

	// add
	@GetMapping("/add")
	public ModelAndView toAdd(ModelAndView mav) {
		mav.getModel().put("newActivityPharmacy", new ActivityPharmacy());
		mav.setViewName("add");
		return mav;
	}

	@PostMapping("/postadd")
	private ModelAndView addAp(ModelAndView mav, @ModelAttribute(name = "newActivityPharmacy") ActivityPharmacy ap,
			BindingResult br) {
		service.saveOrUpdateAp(ap);
		return new ModelAndView("redirect:/ap");
	}

	// update
	@GetMapping("/update/{id}")
	public ModelAndView getId(ModelAndView mav, @PathVariable("id") Integer id) {
		ActivityPharmacy getActivityPharmacyById = service.getActivityPharmacyById(id);
		mav.getModel().put("getActivityPharmacyById", getActivityPharmacyById);
		mav.setViewName("update");
		return mav;
	}

	@PostMapping("/postupdate")
	public ModelAndView updateAp(ModelAndView mav,
			@ModelAttribute(name = "getActivityPharmacyById") ActivityPharmacy ap, BindingResult br) {
		service.saveOrUpdateAp(ap);
		return new ModelAndView("redirect:/ap");
	}

}
