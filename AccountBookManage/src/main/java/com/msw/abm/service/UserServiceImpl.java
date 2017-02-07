package com.msw.abm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msw.abm.dao.UserDAO;
import com.msw.abm.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;
	
	/**
	 * 일반 로그인
	 * @param id 아이디
	 * @param password 비밀번호
	 * @return List<UserVO>
	 */
	@Override
	public List<UserVO> sessionLogin(String id, String password) {
		UserVO uv = new UserVO();

		uv.setId(id);
		uv.setPassword(password);

		return userDAO.sessionLogin(uv);
	}

}