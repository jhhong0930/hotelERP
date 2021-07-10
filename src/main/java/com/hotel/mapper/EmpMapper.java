package com.hotel.mapper;


import com.hotel.domain.EmpVO;

import java.util.List;

public interface EmpMapper {
    //전체조회
    List<EmpVO> getEmpList();

    //상세조회
    EmpVO getEmp(int eid);

    //생성
    int create(EmpVO empVO);

    //수정
    int update(EmpVO empVO);

    //삭제
    int delete(int eid);
}
