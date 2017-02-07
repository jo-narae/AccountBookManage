package com.msw.abm.mapper;

import java.util.ArrayList;
import com.msw.abm.vo.ApplyVO;

public interface ApplyMapper {

	ArrayList<ApplyVO> findWithdrawMannageList(ApplyVO dv);

	int withdrawMannageListCount();

}
