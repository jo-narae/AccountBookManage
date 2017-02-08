package com.msw.abm.mapper;

import java.util.ArrayList;

import com.msw.abm.vo.UserVO;

public interface UserMapper {

	/**
	 * 현재 기수현황 조회
	 * @return ArrayList<UserVO>
	 */
	ArrayList<UserVO> cardinalList();
	
	/**
	 * 아이디 중복체크
	 * @param UserVO
	 * @return int
	 */
	int idOverlapCheck(UserVO user);
	
	/**
	 * 이메일 중복체크
	 * @param UserVO
	 * @return int
	 */
	int emailOverlapCheck(UserVO user);
}