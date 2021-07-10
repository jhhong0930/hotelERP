package com.hotel.service;

import com.hotel.domain.RoomVO;
import com.hotel.mapper.RoomMapper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class RoomServiceImpl implements RoomService{

    private RoomMapper roomMapper;

    @Override
    public List<RoomVO> getRoomList() {
        return roomMapper.getRoomList();
    }

    @Override
    public RoomVO getRoom(int rno) {
        return roomMapper.getRoom(rno);
    }

    @Override
    public int update(RoomVO vo) {
        return roomMapper.update(vo);
    }
}
