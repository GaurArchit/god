package com.games.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.games.model.Product;
import com.games.services.ProductServices;



@Controller 
public class ProductController {
	@Autowired
	 ProductServices productServices;
	
	@Autowired(required=true)
	@Qualifier(value="productServices")
	public void setPersonService(ProductServices ps){
		this.productServices = ps;
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String listProduct(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("listPersons", this.productServices.findAllProduct());
		return "person";
	}
	
	//For add and update person both
	@RequestMapping(value= "/admin/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product p){
		
		if(p.getId() == 0){
			//new person, add it
			this.productServices.saveProduct(p);
		}else{
			//existing person, call update
			this.productServices.updateProduct(p);
		}
		
		return "redirect:/admin";
		
	}
}