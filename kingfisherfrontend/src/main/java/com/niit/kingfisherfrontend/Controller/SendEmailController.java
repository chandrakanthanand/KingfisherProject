package com.niit.kingfisherfrontend.Controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.kingfisherbackend.Dao.UserDao;
import com.niit.kingfisherbackend.model.User;
import com.niit.kingfisherfrontend.Otp.Otpganarater;
//import com.niit.kingfisherfrontend.sms.Smstoclient;

@Controller
public class SendEmailController {

	@Autowired
    private JavaMailSender mailSender;
	
	@Autowired
	private User user;
	
	@Autowired
	private UserDao userDao;
	
//	@Autowired
//	Smstoclient  smstoclient;
	
    
	 @RequestMapping(value="/Email")
	    public String Email()
	    {
		 Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			if (!(authentication instanceof AnonymousAuthenticationToken)) 
			{
				
				String currusername = authentication.getName();
				user = userDao.getUseremail(currusername);
				Otpganarater ot=new Otpganarater();
				String o=ot.Otpga();
				String messages="Your One time Password is "+o;
				Long no=Long.parseLong(user.getU_phno());
//				smstoclient.sendsms(messages,no);
			    
	     }
	  return "EmailForm";
	    }
	    @RequestMapping(value="/SendEmail",method = RequestMethod.GET)
	    public String doSendEmail(HttpServletRequest request) 
	    {
	         // takes input from e-mail form
	 
	    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			if (!(authentication instanceof AnonymousAuthenticationToken)) {
				String currusername = authentication.getName();
				user = userDao.getUseremail(currusername);      
				Otpganarater ot=new Otpganarater();
				String o=ot.Otpga();	
		   	String recipientAddress = user.getU_email();
		   	String subject="OTP";
//	        String subject = request.getParameter("subject");
	        String message = "your one time password is "+o+" ";
	        
	        // prints debug info
	        System.out.println("To:" + recipientAddress);
	        System.out.println("Subject: " + subject);
	        System.out.println("Message: " + message);
	        
	            
//	        System.out.println("OTP:"+ otp);
	        // creates a simple e-mail object
	        SimpleMailMessage email = new SimpleMailMessage();
	        email.setTo(recipientAddress);
	        email.setSubject(subject);
	        email.setText(message);
//	        email.setSubject(otp);
	        // sends the e-mail
	        mailSender.send(email);
	        
	         
	        // forwards to the view named "Result"
	        return "Result";
	    }
			else
			{
				return "redirect:/";
			}
			
     }
}
