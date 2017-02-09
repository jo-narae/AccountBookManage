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
	
	/**
	 * 권한부여
	 * 일반사용자 권한 : ROLE_USER
	 * 관리자 권한 : ROLE_ADMIN
	 * @param UserVO
	 */
	public void authAssign(UserVO user, String auth);

	/**
	 * 전체 유저 정보 조회
	 * @return List<UserVO>
	 */
	public List<UserVO> userListFind(int pageNum);
	
	
	/**
	 * 전체 회원 수
	 * @return int
	 */
	public int userListCount();
}
