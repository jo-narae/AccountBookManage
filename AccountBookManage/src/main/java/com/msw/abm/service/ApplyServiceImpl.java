package com.msw.abm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msw.abm.dao.ApplyDAO;

import com.msw.abm.vo.ApplyVO;

@Service
public class ApplyServiceImpl implements ApplyService {
	@Autowired
	private ApplyDAO applyDAO;
	/**
	 * 출금 목록 리스트 조회
	 * @param pageNum 현재 페이지 수
	 * @return List<ApplyVO>
	 */
	@Override
	public List<ApplyVO> findWithdrawMannageList(int pageNum) {
		ApplyVO dv = new ApplyVO();
		
		int listSize = 10;
		int skipCount = (pageNum-1)*listSize;
		
		dv.setSkipCount(skipCount);
		dv.setListSize(listSize);

		return applyDAO.findWithdrawMannageList(dv);
	}
	/**
	 * 출금 목록 리스트 총 개수 조회
	 * @return int
	 */
	@Override
	public int withdrawMannageListCount() {
		return applyDAO.withdrawMannageListCount();
	}
	
	/**
	 * 신청 목록 리스트 조회
	 * @param pageNum 현재 페이지 수
	 * @return List<ApplyVO>
	 */
	@Override
	public List<ApplyVO> findWithDrawApplyList(int pageNum) {
		ApplyVO dv = new ApplyVO();
		
		int listSize = 10;
		int skipCount = (pageNum-1)*listSize;
		
		dv.setSkipCount(skipCount);
		dv.setListSize(listSize);

		return applyDAO.findWithDrawApplyList(dv);
	}
	/**
	 * 신청 목록 리스트 총 개수 조회
	 * @return int
	 */
	@Override
	public int withDrawApplyListCount() {
		return applyDAO.withDrawApplyListCount();
	}
}
