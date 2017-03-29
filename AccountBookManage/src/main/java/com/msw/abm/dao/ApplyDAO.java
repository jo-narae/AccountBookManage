package com.msw.abm.dao;

import java.util.List;

import com.msw.abm.vo.ApplyVO;
;

public interface ApplyDAO {
	/**
	 * 출금 목록 리스트 조회
	 * @param pageNum 현재 페이지 수
	 * @return List<DealVO>
	 */
	List<ApplyVO> findWithdrawMannageList(ApplyVO dv);
	/**
	 * 출금 목록 리스트 총 개수 조회
	 * @return int
	 */
	int withdrawMannageListCount();
	/**
	 * 신청 목록 리스트 조회
	 * @param pageNum 현재 페이지 수
	 * @return List<DealVO>
	 */
	List<ApplyVO> findWithDrawApplyList(ApplyVO dv);
	/**
	 * 신청 목록 리스트 총 개수 조회
	 * @return int
	 */
	int withDrawApplyListCount();
	/**
	 * 신청 목록 자세히보기
	 * @param seq 선택 id
	 * @return List<ApplyVO>
	 */
	List<ApplyVO> applyDetail(ApplyVO dv);
}
