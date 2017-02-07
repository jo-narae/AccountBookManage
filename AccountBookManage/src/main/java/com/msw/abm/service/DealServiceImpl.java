package com.msw.abm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msw.abm.dao.DealDAO;
import com.msw.abm.vo.DealVO;

@Service
public class DealServiceImpl implements DealService {
	
	@Autowired
	private DealDAO dealDAO;
	
	/**
	 * 입금 목록 리스트 조회
	 * @param pageNum 현재 페이지 수
	 * @return List<DealVO>
	 */
	@Override
	public List<DealVO> findDepositList(int pageNum) {
		DealVO dv = new DealVO();
		
		int listSize = 10;
		int skipCount = (pageNum-1)*listSize;
		
		dv.setSkipCount(skipCount);
		dv.setListSize(listSize);

		return dealDAO.findDepositList(dv);
	}

	/**
	 * 입금 목록 리스트 총 개수 조회
	 * @return int
	 */
	@Override
	public int depositListCount() {
		return dealDAO.depositListCount();
	}
	/**
	 * 출금 목록 리스트 조회
	 * @param pageNum 현재 페이지 수
	 * @return List<DealVO>
	 */
	@Override
	public List<DealVO> findWithdrawMannageList(int pageNum) {
		DealVO dv = new DealVO();
		
		int listSize = 10;
		int skipCount = (pageNum-1)*listSize;
		
		dv.setSkipCount(skipCount);
		dv.setListSize(listSize);

		return dealDAO.findWithdrawMannageList(dv);
	}
	/**
	 * 출금 목록 리스트 총 개수 조회
	 * @return int
	 */
	@Override
	public int withdrawMannageListCount() {
		return dealDAO.withdrawMannageListCount();
	}

}