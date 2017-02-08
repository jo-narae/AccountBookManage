package com.msw.abm.mapper;

import java.util.ArrayList;

import com.msw.abm.vo.UserVO;

public interface UserMapper {

	/**
	 * 현재 기수현황 조회
	 * @return ArrayList<UserVO>
	 */
	ArrayList<UserVO> cardinalList();
}