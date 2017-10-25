package com.games.controller;



import org.springframework.ui.Model;

import java.io.File;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.games.dao.ProductDaoImp;
import com.games.configuration.*;
import com.games.dao.ProductDao;
import com.games.model.Product;
import com.games.services.ProductServices;
import com.games.services.ProductServicesImpl;

@Controller
public class ProductController {

	public ProductController() {
		System.out.println("ProductController()");
	}
    
	private ProductServices productServices;
	
	@Autowired(required=true)
	@Qualifier(value="productServicesImpl")
	public void setproductServices(ProductServices ps){
		this.productServices = ps;
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping(value= "/admin/Products", method = RequestMethod.GET)
	public String listProduct(Model model) {
        Product product = new Product();
       // product.setId(0);
        model.addAttribute("product", product);
       
        model.addAttribute("listProduct", this.productServices.findAllProduct());
        return "admin";
    }
	
	 
	

	
	@RequestMapping(value = "/admin/Product/add", method = RequestMethod.POST)
    public ModelAndView saveProduct(@ModelAttribute("product") Product product,Model model,HttpServletRequest request) {
		System.out.println(product.getId()+"==================0000000000000000000000");
        if (product.getId() == 0) { // if employee id is 0 then creating the
            // employee other updating the employee
            productServices.saveProduct(product);
        } else {
            productServices.updateProduct(product);
        }
         final String SAVE_DIR = "/games_images";
        ServletContext context = request.getServletContext();
        String savePath = context.getRealPath(SAVE_DIR);

       
		  File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }


       
        
        
        
        model.addAttribute("product",product);
        model.addAttribute("listProduct", this.productServices.findAllProduct());
        
        
      
        return new ModelAndView("admin");
    }
	
	@RequestMapping(value = "/admin/deleteProduct/{id}", method = RequestMethod.GET)
public String removePerson(@PathVariable("id") int id,Model model){
		 // model.addAttribute("product", this.productServices.findProductById(id));
	        
        this.productServices.deleteProductById(id);
        model.addAttribute("product",new Product());
        model.addAttribute("listProduct", this.productServices.findAllProduct());
	      
        return "admin";
    }
 
	@RequestMapping(value = "/admin/editProduct/{id}", method = RequestMethod.GET)
	public String editProduct(@PathVariable("id") int id, Model model){
        model.addAttribute("product", this.productServices.findProductById(id));
        model.addAttribute("listProduct", this.productServices.findAllProduct());
        return "admin";
    }
 
}
