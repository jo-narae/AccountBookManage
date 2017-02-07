package com.msw.abm.mapper;

import java.util.ArrayList;
import java.util.List;

import com.msw.abm.vo.DealVO;

public interface DealMapper {

	/**
	 * 입금 목록 리스트 조회
	 * @param DealVO
	 * @return ArrayList<DealVO>
	 */
	ArrayList<DealVO> findDepositList(DealVO dv);

	/**
	 * 입금 목록 리스트 총 개수 조회
	 * @return int
	 */
	int depositListCount();
	/**
	 * 출금 목록 리스트 조회
	 * @param DealVO
	 * @return ArrayList<DealVO>
	 */
	ArrayList<DealVO> findWithdrawMannageList(DealVO dv);
	/**
	 * 출금 목록 리스트 총 개수 조회
	 * @return int
	 */
	int withdrawMannageListCount();
}