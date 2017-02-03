package com.msw.abm.mapper;

import java.util.ArrayList;

import com.msw.abm.vo.DealVO;

public interface DealMapper {

	/**
	 * 입금 목록 리스트 조회
	 * @param DealVO
	 * @return ArrayList<DealVO>
	 */
	ArrayList<DealVO> fintDepositList(DealVO dv);

	/**
	 * 입금 목록 리스트 총 개수 조회
	 * @return int
	 */
	int depositListCount();
}