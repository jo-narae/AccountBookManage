package com.msw.abm.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.msw.abm.mapper.UserMapper;
import com.msw.abm.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSession sqlSession;

	/**
	 * 현재 기수현황 조회
	 * @return List<UserVO>
	 */
	@Override
	public List<UserVO> cardinalList() {
		List<UserVO> result;
		UserMapper resultMapper = sqlSession.getMapper(UserMapper.class);

		result = resultMapper.cardinalList();

		return result;
	}
	
	/**
	 * 아이디 중복체크
	 * @param UserVO
	 * @return int
	 */
	@Override
	public int idOverlapCheck(UserVO user) {
		UserMapper resultMapper = sqlSession.getMapper(UserMapper.class);

		return resultMapper.idOverlapCheck(user);
	}
	
	/**
	 * 이메일 중복체크
	 * @param UserVO
	 * @return int
	 */
	@Override
	public int emailOverlapCheck(UserVO user) {
		UserMapper resultMapper = sqlSession.getMapper(UserMapper.class);

		return resultMapper.emailOverlapCheck(user);
	}

	/**
	 * 회원가입
	 * @param UserVO
	 */
	@Override
	public void userJoinSave(UserVO user) {
		UserMapper resultMapper = sqlSession.getMapper(UserMapper.class);
		resultMapper.userJoinSave(user);
	}

	/**
	 * 권한부여
	 * @param UserVO
	 */
	@Override
	public void authorityAssign(UserVO user) {
		UserMapper resultMapper = sqlSession.getMapper(UserMapper.class);
		resultMapper.authorityAssign(user);
	}

}

