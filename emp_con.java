package com.emp_curdss.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.emp_curdss.model.emp;
import com.emp_curdss.respority.emp_repo;
 
@Controller
public class emp_con {

	@Autowired
	emp_repo er;
	
	@RequestMapping("/")
	public String home()
	{
		return "login";
	}
	@RequestMapping("signup1")
	public String signup()
	{
		return "signup";
	}
	
	@RequestMapping("/login")
	public String loginc(@RequestParam("email") String email, @RequestParam("password") String password) {
		
		emp ep=er.findByEmail(email);
		 if (ep != null && ep.getEmail() != null && ep.getEmail().equalsIgnoreCase(email) && ep.getPassword().equals(password))  
			 return "dashboard";
		    else  
		        return "login";
		     
		
	}
	 
	 
	@RequestMapping("/signup")
	public String sign(@ModelAttribute emp e) {
		 er.save(e);
		return "login";
	}
	
	@RequestMapping("/fetch")
	public String datafect(Model data)
	{
		List<emp> al=er.findAll();
		System.out.println(al);
		
		data.addAttribute("e_data",al);
		
		return "datafetch";
	}
	@RequestMapping("dashboard1")
	 public String back()
	 {
		return "dashboard";
	 }
	
	@RequestMapping("/Delete/{id}")
	public String delete(@PathVariable int id)
	{
		er.deleteById(id);
		return "redirect:/fetch";
	}
	
	@RequestMapping("/{id}")
	public String edit(@PathVariable int id,Model m)
	{
		emp ob=er.findById(id).orElse(null);
		
		m.addAttribute("data", ob);
		
		return "edit";
	}
	
	@RequestMapping("edit/{id}")
	public String update(@PathVariable int id,@ModelAttribute emp e)
	{
		emp ob=er.findById(id).orElse(null);
		
		if(ob!=null)
		{
			ob.setName(e.getName());
			ob.setMob(e.getMob());
			ob.setEmail(e.getEmail());
			ob.setPassword(e.getPassword());
			er.save(ob);
			
		}
		return "redirect:/fetch";
	}
	@RequestMapping("dashboard2")
	 public String backs()
	 {
		return "dashboard";
	 }
	 
	
}
