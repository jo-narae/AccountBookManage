package com.msw.abm.dao;

import java.util.List;

import com.msw.abm.vo.UserVO;

public interface UserDAO {

	/**
	 * 현재 기수현황 조회
	 * @return List<UserVO>
	 */
	public List<UserVO> cardinalList();
	
}
