package com.hotel.service;

import com.hotel.domain.RoomVO;
import com.hotel.mapper.RoomMapper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@AllArgsConstructor
public class RoomServiceImpl implements RoomService{

    private RoomMapper mapper;

    @Override
    public List<RoomVO> getList() {
        return mapper.getList();
    }
}
