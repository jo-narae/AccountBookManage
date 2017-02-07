package com.msw.abm.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.msw.abm.mapper.DealMapper;
import com.msw.abm.vo.DealVO;

@Repository
public class DealDAOImpl implements DealDAO {

	@Autowired
	private SqlSession sqlSession;

	/**
	 * 입금 목록 리스트 조회
	 * @param DealVO
	 * @return List<DealVO>
	 */
	@Override
	public List<DealVO> findDepositList(DealVO dv) {
		List<DealVO> result;
		DealMapper resultMapper = sqlSession.getMapper(DealMapper.class);

		result = resultMapper.findDepositList(dv);

		return result;
	}

	/**
	 * 입금 목록 리스트 총 개수 조회
	 * @return int
	 */
	@Override
	public int depositListCount() {
		DealMapper resultMapper = sqlSession.getMapper(DealMapper.class);

		return resultMapper.depositListCount();
	}
	/**
	 * 출금 목록 리스트 조회
	 * @param DealVO
	 * @return List<DealVO>
	 */
	@Override
	public List<DealVO> findWithdrawMannageList(DealVO dv) {
		List<DealVO> result;
		DealMapper resultMapper = sqlSession.getMapper(DealMapper.class);

		result = resultMapper.findWithdrawMannageList(dv);

		return result;
	}
	/**
	 * 출금 목록 리스트 총 개수 조회
	 * @return int
	 */
	@Override
	public int withdrawMannageListCount() {
		DealMapper resultMapper = sqlSession.getMapper(DealMapper.class);

		return resultMapper.withdrawMannageListCount();
	}
	
}

