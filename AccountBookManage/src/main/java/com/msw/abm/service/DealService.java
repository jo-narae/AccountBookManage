package com.msw.abm.service;

import java.util.List;

import com.msw.abm.vo.DealVO;

public interface DealService {
	
	/**
	 * 입금 목록 리스트 조회
	 * @param pageNum 현재 페이지 수
	 * @return List<DealVO>
	 */
	public List<DealVO> findDepositList(int pageNum);
	
	/**
	 * 입금 목록 리스트 총 개수 조회
	 * @return int
	 */
	public int depositListCount();
	/**
	 * 출국 목록 리스트 조회
	 * @param pageNum 현재 페이지 수
	 * @return List<DealVO>
	 */
	public List<DealVO> findWithdrawMannageList(int pageNum);
	/**
	 * 춝금 목록 리스트 총 개수 조회
	 * @return int
	 */
	public int withdrawMannageListCount();

	
	
	
}
