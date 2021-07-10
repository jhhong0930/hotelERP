package com.hotel.service;

import com.hotel.domain.RoomVO;

import java.util.List;

public interface RoomService {
    // 전체조회
    List<RoomVO> getRoomList();

    // 상세조회
    RoomVO getRoom(int rno);

    //업데이트
    int update(RoomVO vo);
}
