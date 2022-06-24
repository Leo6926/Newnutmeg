package com.staceyboot.springbootdemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.staceyboot.springbootdemo.model.SysMembers;
import com.staceyboot.springbootdemo.service.SysMembersService;

@Controller
public class SysMembersController {

	@Autowired
	private SysMembersService service;


	// _登入
	@GetMapping("/administratorLogin")
	public ModelAndView toLoginPage(ModelAndView mav) {
		mav.setViewName("/sysJsp/sysMember");
		return mav;
	}

	@PostMapping("/postAdministratorLogin")
	public ModelAndView goToLogin(ModelAndView mav, @RequestParam("account") String account,
			@RequestParam("password") String password) {
		
		SysMembers selectMemberByAccout = service.selectMemberByAccout(account);
		String pwd = selectMemberByAccout.getPassword();
		if (pwd.equals(password)) {
			mav.getModel().put("memberData", selectMemberByAccout);
			mav.setViewName("/sysJsp/sysMyNavbar");
		} else {
			mav.setViewName("redirect:/memberLogin");
		}

		return mav;
	}

	// _登出
	@GetMapping("administratorsignOut")
	public ModelAndView signOut(ModelAndView mav) {
		return new ModelAndView("redirect:/firstPage");
	}
//----------------------------------------------------------------------------------------------------------------------------

}
