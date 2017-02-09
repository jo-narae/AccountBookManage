package com.msw.abm.service;

import java.util.List;

import com.msw.abm.dto.JoinDTO;
import com.msw.abm.vo.UserVO;

public interface UserService {
	
	/**
	 * 현재 기수현황 조회
	 * @return List<UserVO>
	 */
	public List<UserVO> cardinalList();

	/**
	 * 아이디 중복체크
	 * @return int
	 */
	int idOverlapCheck(String id);

	/**
	 * 이메일 중복체크
	 * @return int
	 */
	int emailOverlapCheck(String email);

	/**
	 * 회원가입
	 * @param UserVO
	 */
	public void userJoinSave(UserVO user);
	
}
