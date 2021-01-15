package com.claim.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.Product;
import com.claim.service.ProductService;


@Controller
public class ProductController 
{
	@Autowired
	ProductService productService;

	@RequestMapping(value="/saveProduct", method=RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute("product") Product product)
	{
		System.out.println(product);
		productService.saveProduct(product);
		return new ModelAndView("addProduct", "product", new Product());
	}

	@RequestMapping(value="/allProducts", method=RequestMethod.GET)
	public ModelAndView findAllProducts(HttpSession session)
	{
		ArrayList<Product> products = productService.findAll();
		return new ModelAndView("allProducts", "products", products);
	}

	@RequestMapping(value="/searchProducts", method=RequestMethod.GET)
	public ModelAndView searchProducts(@RequestParam("searchProducts") String searchProducts)
	{
		System.out.println(searchProducts);
		ArrayList<Product> products =productService.searchProduct(searchProducts);
		System.out.println(products.size());
		
		return new ModelAndView("allProducts", "products", products);
//		ArrayList<Product> products = productService.findAll();
//		for (Product product : products)
//			if (product.toString().toLowerCase().contains(searchProducts.toLowerCase()))
//				System.out.println(product);
	}

}

