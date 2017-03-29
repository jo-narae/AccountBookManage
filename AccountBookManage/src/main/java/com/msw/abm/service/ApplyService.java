package com.msw.abm.service;

import java.util.List;
import com.msw.abm.vo.ApplyVO;

public interface ApplyService {
	
	/**
	 * 출금 목록 리스트 조회
	 * @param pageNum 현재 페이지 수
	 * @return List<ApplyVO>
	 */
	public List<ApplyVO> findWithdrawMannageList(int pageNum);
	/**
	 * 출금 목록 리스트 총 개수 조회
	 * @return int
	 */
	public int withdrawMannageListCount();
	
	/**
	 * 신청 목록 리스트 조회
	 * @param pageNum 현재 페이지 수
	 * @return List<ApplyVO>
	 */
	public List<ApplyVO> findWithDrawApplyList(int pageNum);
	/**
	 * 신청 목록 리스트 총 개수 조회
	 * @return int
	 */
	public int withDrawApplyListCount();
	
	/**
	 * 신청 목록 자세히보기
	 * @param seq 선택 id
	 * @return List<ApplyVO>
	 */
	public List<ApplyVO> applyDetail(int seq);
}
