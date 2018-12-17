package citic.wang.springboot.service;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import citic.wang.springboot.mapper.UserMapper;
import citic.wang.springboot.model.User;

@Service
public class UserService {
	
	@Autowired
	private UserMapper usermapper;
	
	public User getoneUser(User user) {
		return usermapper.selectOne(user);
		
	}
	
	public int getcount(User user) {
		return usermapper.selectCount(user);
	}

	public static Set<String> getPermissionSet() {
		// TODO Auto-generated method stub
		return null;
	}
	

}
