package com.msw.abm.dao;

import java.util.List;

import com.msw.abm.vo.DealVO;

public interface DealDAO {
	
	/**
	 * 입금 목록 리스트 조회
	 * @param pageNum 현재 페이지 수
	 * @return List<DealVO>
	 */
	List<DealVO> findDepositList(DealVO deal);

	/**
	 * 입금 목록 리스트 총 개수 조회
	 * @return int
	 */
	int depositListCount();
	
}
