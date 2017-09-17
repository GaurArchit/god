package com.games.controller;



import javax.enterprise.inject.Model;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	
	
	
	
	
	
	
	
	@RequestMapping(value= "/admin/allProduct", method = RequestMethod.GET)
	
	public ModelAndView viewAllProduct(ModelAndView model) {
        Product product = new Product();
        model.addObject("product", product);
        model.setViewName("admin");
        model.addObject("listProduct", this.productServices.findAllProduct());
        return model;
    }
	
	
	
	
	@RequestMapping(value = "/admin/newProduct", method = RequestMethod.GET)
    public ModelAndView newProduct(ModelAndView model) {
        Product product = new Product();
        model.addObject("product", product);
        model.setViewName("productForm");
        return model;
    }
	
	@RequestMapping(value = "/admin/saveProduct", method = RequestMethod.POST)
    public ModelAndView saveProduct(@ModelAttribute Product product) {
        if (product.getId() == 0) { // if employee id is 0 then creating the
            // employee other updating the employee
            productServices.saveProduct(product);
        } else {
            productServices.updateProduct(product);
        }
        return new ModelAndView("redirect:/products");
    }
	
	@RequestMapping(value = "/admin/deleteProduct", method = RequestMethod.GET)
    public ModelAndView deleteProduct(HttpServletRequest request) {
        int productId = Integer.parseInt(request.getParameter("id"));
productServices.deleteProductById(productId);
        return new ModelAndView("redirect:/products");
    }
 
	@RequestMapping(value = "/admin/editProduct", method = RequestMethod.GET)
    public ModelAndView editProduct(HttpServletRequest request) {
        int productId = Integer.parseInt(request.getParameter("id"));
        Product product = productServices.findProductById( productId);
        ModelAndView model = new ModelAndView("productForm");
        model.addObject("product", product);
        return model;
    }
 
}
