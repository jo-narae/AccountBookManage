package com.msw.abm.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.msw.abm.mapper.ApplyMapper;
import com.msw.abm.vo.ApplyVO;

@Repository
public class ApplyDAOImpl implements ApplyDAO {

	@Autowired
	private SqlSession sqlSession;

	/**
	 * 출금 목록 리스트 조회
	 * @param pageNum 현재 페이지 수
	 * @return List<DealVO>
	 */
	@Override
	public List<ApplyVO> findWithdrawMannageList(ApplyVO dv) {
		List<ApplyVO> result;
		ApplyMapper resultMapper = sqlSession.getMapper(ApplyMapper.class);

		result = resultMapper.findWithdrawMannageList(dv);

		return result;
	}

	/**
	 * 출금 목록 리스트 총 개수 조회
	 * @return int
	 */
	@Override
	public int withdrawMannageListCount() {
		ApplyMapper resultMapper = sqlSession.getMapper(ApplyMapper.class);

		return resultMapper.withdrawMannageListCount();
	}
	
	/**
	 * 신청 목록 리스트 조회
	 * @param pageNum 현재 페이지 수
	 * @return List<DealVO>
	 */
	@Override
	public List<ApplyVO> findWithDrawApplyList(ApplyVO dv) {
		List<ApplyVO> result;
		ApplyMapper resultMapper = sqlSession.getMapper(ApplyMapper.class);

		result = resultMapper.findWithDrawApplyList(dv);

		return result;
	}

	/**
	 * 신청 목록 리스트 총 개수 조회
	 * @return int
	 */
	@Override
	public int withDrawApplyListCount() {
		ApplyMapper resultMapper = sqlSession.getMapper(ApplyMapper.class);

		return resultMapper.withDrawApplyListCount();
	}
	
}
