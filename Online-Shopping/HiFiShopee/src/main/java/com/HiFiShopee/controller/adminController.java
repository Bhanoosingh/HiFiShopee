package com.HiFiShopee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class adminController {
	@RequestMapping(value= {"/","/supplier"})
	public String adminHome()
	{
		return "admin";
	}
	@RequestMapping(value= {"/product"})
	public String adminproduct()
	{
		return "admin";
	}
	@RequestMapping(value= {"/category"})
	public String admincategory()
	{
		return "admin";
	}

}
