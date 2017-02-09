package com.msw.abm.dao;

import java.util.List;

import com.msw.abm.vo.UserVO;

public interface UserDAO {

	/**
	 * 현재 기수현황 조회
	 * @return List<UserVO>
	 */
	public List<UserVO> cardinalList();

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

	/**
	 * 회원가입
	 * @param UserVO
	 */
	public void userJoinSave(UserVO user);

	/**
	 * 권한부여
	 * @param UserVO
	 */
	public void authorityAssign(UserVO user);

	/**
	 * 전체 유저 정보 조회
	 * @return List<UserVO>
	 */
	public List<UserVO> userListFind(UserVO user);

	/**
	 * 전체 회원 수
	 * @return int
	 */
	public int userListCount();
	
}
