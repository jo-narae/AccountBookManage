package com.msw.abm.mapper;

import java.util.ArrayList;
import com.msw.abm.vo.ApplyVO;

public interface ApplyMapper {
	
	/**
	 * 출금 목록 리스트 조회
	 * @param pageNum 현재 페이지 수
	 * @return List<DealVO>
	 */
	ArrayList<ApplyVO> findWithdrawMannageList(ApplyVO dv);

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
	ArrayList<ApplyVO> findWithDrawApplyList(ApplyVO dv);

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
	ArrayList<ApplyVO> applyDetail(ApplyVO dv);

}
