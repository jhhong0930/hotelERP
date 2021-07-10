package com.hotel.service;

import com.hotel.domain.EmpVO;

import java.util.List;

public interface EmpService {

    // 전체조회
    List<EmpVO> getList();

    // 상세조회
    EmpVO detail(int eid);

    // 추가
    int insert(EmpVO emp);

    // 수정
    int update(EmpVO emp);

    // 삭제
    int delete(int eid);

}
