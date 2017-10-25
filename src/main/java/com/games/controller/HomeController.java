package com.games.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller	
public class HomeController {
	
	
	@RequestMapping("/log")
	public String logPage()
	{
	 return "log";	
	}
@RequestMapping("/")
public String indexpage()
{
	return "index";
}
	
@RequestMapping("/sign")
public String signpage()
{
	return "sign";
}
	
	
@RequestMapping("/foot")
public String footpage()
{
	return "foot";
}
	
@RequestMapping("/admin")
public String Sampage()
{
	return "admin";
}
	
@RequestMapping("/Viewproduct")
public String Spage()
{
	return "Viewproduct";
}


}
