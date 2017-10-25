package com.games.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class LoginController {
 
 @RequestMapping(value="/index", method = RequestMethod.GET)
 public String executeSecurity(ModelMap model, Principal principal ) {
 
  String name = principal.getName();
  model.addAttribute("author", name);
  model.addAttribute("message", "Welcome To Login Form ");
  return "log";
 
 }
 
 @RequestMapping(value="/login", method = RequestMethod.GET)
 public String login(ModelMap model) {
 
  return "log";
 
 }
 
 @RequestMapping(value="/fail2login", method = RequestMethod.GET)
 public String loginerror(ModelMap model) {
 
  model.addAttribute("error", "true");
  return "log";
 
 }
 
 @RequestMapping(value="/logout", method = RequestMethod.GET)
 public String logout(ModelMap model) {
 
  return "log";
 
 }
}