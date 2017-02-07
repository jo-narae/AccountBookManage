package com.msw.abm.mapper;

import java.util.ArrayList;

import com.msw.abm.vo.UserVO;

public interface UserMapper {

	/**
	 * 입금 목록 리스트 조회
	 * @param DealVO
	 * @return ArrayList<DealVO>
	 */
	ArrayList<UserVO> sessionLogin(UserVO uv);
}