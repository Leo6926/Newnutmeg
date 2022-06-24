package com.staceyboot.springbootdemo.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.staceyboot.springbootdemo.model.Members;
import com.staceyboot.springbootdemo.service.MembersService;



@Controller
public class LoginController {
	
	@Autowired
	private MembersService membersService;
	
	private Members newRegister = new Members();
	
	@PostMapping("memberLogin")
	public ModelAndView goToLogin(ModelAndView mav,
								  @RequestParam("memberAccout") String memberAccout,
								  @RequestParam("memberPassword") String memberPassword) {
		
		Members selectMemberByAccout = membersService.selectMemberByAccout(memberAccout);
		String pwd = selectMemberByAccout.getMembersPassword();
		if(pwd.equals(memberPassword)) {
			mav.getModel().put("memberData", selectMemberByAccout);
			//if memberData 存在 導第2個 navbar
			mav.setViewName("membersIndex");			
		}else {
			mav.setViewName("index");
		}
		
		return mav;
	}
	
	//_登出
	@GetMapping("signOut")
	public ModelAndView signOut(ModelAndView mav) {
		
		return new ModelAndView("redirect:/");
	}
//----------------------------------------------------------------------------------------------------------------------------
//_會員中心
	
	//_會員資料
	@GetMapping("memberLogin/memberData/{membersId}")
	public ModelAndView toMemberData(ModelAndView mav, @PathVariable("membersId") Integer membersId) {
		
		Members selectMemberById = membersService.selectMemberById(membersId);
		mav.getModel().put("memberData", selectMemberById);
		
		mav.setViewName("login/memberData");
		return mav;
	}
	
	//_會員資料_修改
	@PostMapping("memberLogin/updataMemberData")
	public ModelAndView postMember(ModelAndView mav, @ModelAttribute("memberData") Members memberData ) {
		
		membersService.saveMember(memberData);
		
		return new ModelAndView("redirect:memberLogin/memberData");
	}
		
//----------------------------------------------------------------------------------------------------------------------------
	//_註冊	
	@GetMapping("register")
	public ModelAndView toRegisterPage(ModelAndView mav) {
		
		mav.setViewName("login/registerPage");
		return mav;
	}
	
	@PostMapping("membersRegister")
	public ModelAndView membersRegister(ModelAndView mav,
										@RequestParam("email") String email,
										@RequestParam("phone") String phone) {
			
		newRegister.setMembersEmail(email);
		newRegister.setMembersPhone(phone);
			
		mav.setViewName("login/registerPage2");
		return mav;
	}
		
	@PostMapping("membersRegister2")
	public ModelAndView membersRegister2(ModelAndView mav,
										 @RequestParam("account") String account, 
										 @RequestParam("password") String password) {
		
		//要加個用帳號搜帳號的Dao 判斷帳號是否重複
		
		newRegister.setMembersAccount(account);
		newRegister.setMembersPassword(password);
			
		mav.setViewName("login/registerPage3");
		return mav;
	}
		
	@PostMapping("membersRegister3")
	public ModelAndView membersRegister3(ModelAndView mav,
										 @RequestParam("membersName") String membersName,
										 @RequestParam("gender") String gender,
										 @RequestParam("birthday") String StringBirthday,
										 @RequestParam("county") String county,
										 @RequestParam("township") String township,
										 @RequestParam("detailAddress") String detailAddress) {
		
		Date birthday = null;
		String address = county + township + detailAddress;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			birthday = sdf.parse(StringBirthday);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		newRegister.setMembersName(membersName);
		newRegister.setMembersGender(gender);
		newRegister.setMembersBirthday(birthday);
		newRegister.setMembersAddress(address);
			
		membersService.saveMember(newRegister);

		mav.setViewName("login/registerSuccess");
		return mav;
	}
}

