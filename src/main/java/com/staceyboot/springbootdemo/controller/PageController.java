package com.staceyboot.springbootdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {
	
	@GetMapping("/sysMyNavbar")
	public String gotosysMyNavbar() {
		return "sysJsp/sysMyNavbar";
	}
	
	@GetMapping("/loginPage")
	public String gotologin() {
		return "login/loginPage";
	}
	
	@GetMapping("/syslogin")
	public String login() {
		return "login";
	}
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/about")
	public String gotoAbout() {
		return "about";
	}
	
	@GetMapping("/aos")
	public String gotoAos() {
		return "aos";
	}
	
	@GetMapping("/prescription")
	public String gotoPt() {
		return "prescription";
	}
	
	@GetMapping("/toIndex")
	public String toIndex() {
		return "firstPage";
	}
	
}
