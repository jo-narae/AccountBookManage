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
	 * 현재 기수현황 조회
	 * @return List<UserVO>
	 */
	@Override
	public List<UserVO> cardinalList() {
		return userDAO.cardinalList();
	}

}