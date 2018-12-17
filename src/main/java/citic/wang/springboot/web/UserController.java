package citic.wang.springboot.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.actuate.trace.http.HttpTrace.Session;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import citic.wang.springboot.conf.WebMvcConfig;
import citic.wang.springboot.model.User;
import citic.wang.springboot.service.MailService;
import citic.wang.springboot.service.UserService;
import citic.wang.springboot.util.LoginRequired;

@RestController
@RequestMapping("/index")
public class UserController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private MailService mailService;
	
	@RequestMapping
	public ModelAndView index() {
		ModelAndView result =new ModelAndView("index");
		return result;
	}
	@RequestMapping("/register")
	public ModelAndView register() {
		ModelAndView result =new ModelAndView("register");
		return result;
	}
	
	@RequestMapping("/login")
	public ModelAndView login(User user) {
		 HttpSession session =getSession();
		 session.setMaxInactiveInterval(5);
	String 	msg="登录成功";
	ModelAndView result =new ModelAndView();
	int a= userService.getcount(user);
	if(a==1) {
		
		User user2=userService.getoneUser(user);
		session.setAttribute(WebMvcConfig.SESSION_KEY, user2);
		User user3=(User) session.getAttribute("user");
		System.out.println(user3.getEmail());
		result.setViewName("user");
		result.addObject("user", user2);
		return result;
	}else {
		msg="用户名或密码错误";
		result.setViewName("index");
		result.addObject("msg", msg);
		return result;
	}
	
		
	}
	public ModelAndView quuser(User user) {
		ModelAndView result=new ModelAndView("user");
		result.addObject("user", user);
		return result;
	}
	
	@LoginRequired
	@RequestMapping("/ceshi")
	public ModelAndView ceshi() {
		ModelAndView result =new ModelAndView("ceshi");
		return result;
	}
	@RequestMapping("/emailsend")
	public void emailsend(String email) {
		HttpSession session =getSession();
		 session.setMaxInactiveInterval(60);
		 System.out.println(email
				 );
		 int a=mailService.send(email);
		 session.setAttribute("yzm", a);
		 System.out.println(a);
	}
	private static HttpSession getSession() {
		// TODO Auto-generated method stub
		  HttpSession session = null; 
		    try { 
		        session = getRequest().getSession(); 
		    } catch (Exception e) {} 
		        return session; 
	}
	
	public static HttpServletRequest getRequest() { 
	    ServletRequestAttributes attrs =(ServletRequestAttributes) RequestContextHolder.getRequestAttributes(); 
	    return attrs.getRequest(); 
	} 
	

}
