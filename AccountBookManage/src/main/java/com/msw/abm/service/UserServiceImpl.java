package com.msw.abm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msw.abm.dao.UserDAO;
import com.msw.abm.dto.JoinDTO;
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
	
	/**
	 * 아이디 중복체크
	 * @param id
	 * @return int
	 */
	@Override
	public int idOverlapCheck(String id) {
		UserVO user = new UserVO();
		user.setId(id);

		return userDAO.idOverlapCheck(user);
	}
	
	/**
	 * 이메일 중복체크
	 * @param id
	 * @return int
	 */
	@Override
	public int emailOverlapCheck(String email) {
		UserVO user = new UserVO();
		user.setEmail(email);

		return userDAO.emailOverlapCheck(user);
	}

	/**
	 * 회원가입
	 * @param UserVO
	 */
	@Override
	public void userJoinSave(UserVO user) {
		//STEP 1 회원가입
		//enable은 계정 활성화 여부임 true일시 로그인 가능, false일시 로그인 불가
		user.setEnabled(true);
		userDAO.userJoinSave(user);

		//STEP 2 권한부여
		userAuthAssign(user);
	}
	
	/**
	 * 권한부여(일반사용자)
	 * 일반사용자 권한 : ROLE_USER
	 * @param UserVO
	 */
	public void userAuthAssign(UserVO user) {
		user.setAuthority("ROLE_USER");
		userDAO.authorityAssign(user);
	}

}