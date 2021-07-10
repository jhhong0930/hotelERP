package com.hotel.mapper;

import com.hotel.domain.RoomVO;

import java.util.List;

public interface RoomMapper {

    // 전체조회
    List<RoomVO> getList();

    // 상세조회
    RoomVO detail(int rno);

    // 수정
    int update(RoomVO room);

}
