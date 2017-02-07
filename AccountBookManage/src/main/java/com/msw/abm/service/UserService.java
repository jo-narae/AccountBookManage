package com.msw.abm.service;

import java.util.List;

import com.msw.abm.vo.UserVO;

public interface UserService {
	
	/**
	 * 일반 로그인
	 * @param id 아이디
	 * @param password 비밀번호
	 * @return List<UserVO>
	 */
	public List<UserVO> sessionLogin(String id, String password);
	
}
