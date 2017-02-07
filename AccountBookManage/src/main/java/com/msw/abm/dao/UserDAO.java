package com.msw.abm.dao;

import java.util.List;

import com.msw.abm.vo.UserVO;

public interface UserDAO {

	/**
	 * 일반 로그인
	 * @param vo LoginVO
	 * @return UserVO
	 * @exception Exception
	 */
	public List<UserVO> sessionLogin(UserVO vo);
}
