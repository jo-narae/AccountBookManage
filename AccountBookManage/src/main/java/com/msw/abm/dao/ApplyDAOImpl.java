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

	@Override
	public List<ApplyVO> findWithdrawMannageList(ApplyVO dv) {
		List<ApplyVO> result;
		ApplyMapper resultMapper = sqlSession.getMapper(ApplyMapper.class);

		result = resultMapper.findWithdrawMannageList(dv);

		return result;
	}

	@Override
	public int withdrawMannageListCount() {
		ApplyMapper resultMapper = sqlSession.getMapper(ApplyMapper.class);

		return resultMapper.withdrawMannageListCount();
	}
	
}
