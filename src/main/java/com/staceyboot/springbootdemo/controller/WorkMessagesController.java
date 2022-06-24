package com.staceyboot.springbootdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.staceyboot.springbootdemo.dto.MessageDto;
import com.staceyboot.springbootdemo.model.WorkMessages;
import com.staceyboot.springbootdemo.service.WorkMessagesService;

@Controller
public class WorkMessagesController {
	
	@Autowired
	private WorkMessagesService service;
	
	@GetMapping("/message/add")     // ModelAndView 一定要寫在第一個參數
	public ModelAndView goAddMessage(ModelAndView mav) {
		
		WorkMessages msg = new WorkMessages();
		
		// model.addAttribute("名子",物件)
		mav.getModel().put("workMessages", msg);
		
		mav.setViewName("addMessage");
		
		
		WorkMessages lastestMessage = service.getFirstNewMsg();
		
		mav.getModel().put("lastestMessage", lastestMessage);
		
		
		return mav;
	}
	
	@PostMapping("/message/add")
	public ModelAndView postMessage(ModelAndView mav, @ModelAttribute(name="workMessages") WorkMessages msg) {
		
		service.save(msg);
		
		WorkMessages newMsg = new WorkMessages();
		
		mav.getModel().put("workMessages", newMsg);
		
        WorkMessages lastestMessage = service.getFirstNewMsg();
		mav.getModel().put("lastestMessage", lastestMessage);
		
		mav.setViewName("addMessage");
		
		return mav;
	}
	
	@GetMapping("/message/viewMessages")
	public String viewMessagesPage(Model model, @RequestParam(name="p", defaultValue="1") Integer pageNumber) {
		
		Page<WorkMessages> page = service.findByPage(pageNumber);
		
		model.addAttribute("page", page);
		
		return "viewMessages";
	}
	
	@GetMapping("/editMessage/{id}")
	public String editMessage(Model model, @PathVariable("id") Integer id) {
		WorkMessages msg = service.findById(id);
		
		model.addAttribute("workMessage", msg);
		
		return "editMessage";
	}
	
	@PostMapping("/postEditMessage")
	public String postEditMessage(@ModelAttribute("workMessage") WorkMessages msg) {
		
		service.save(msg);
		
		return "redirect:/message/viewMessages";
	}
	
	@GetMapping("/deleteMessage/{id}")
	public String deleteMessage(@PathVariable("id") Integer id) {
		service.delete(id);
		
		return "redirect:/message/viewMessages";
	}
	
	@ResponseBody
	@PostMapping("/api/postMessage")
	public List<WorkMessages> postMessageApi(@RequestBody MessageDto dto){
		String text = dto.getMsg();
		WorkMessages workmsg = new WorkMessages();
		workmsg.setText(text);
		
		service.save(workmsg);
		
		Page<WorkMessages> page = service.findByPage(1);
		List<WorkMessages> list = page.getContent();
		
		return list;
	}

}
