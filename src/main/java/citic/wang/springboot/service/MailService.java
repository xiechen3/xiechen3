package citic.wang.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailService {

	@Autowired
	JavaMailSender jms;
	public int send(String email){
		//建立邮件消息
		SimpleMailMessage mainMessage = new SimpleMailMessage();
		//发送者
		int a=(int) (Math.random()*9000+1000);
		mainMessage.setFrom("18511342425@163.com");
		//接收者
		mainMessage.setTo(email);
		//发送的标题
		mainMessage.setSubject("嗨喽");
		//发送的内容
		mainMessage.setText("验证码为"+a);
		jms.send(mainMessage);
		return a;
	}


}
