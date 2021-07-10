package com.hotel.mapper;

import com.hotel.domain.RoomVO;
import com.hotel.service.RoomService;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class RoomMapperTests {

    @Setter(onMethod_ = @Autowired)
    private RoomMapper roomMapper;

    @Test
    public void testGetRoomList() {
        roomMapper.getRoomList().forEach(room -> log.info(room));
    }

    @Test
    public void testGetRoom() {
        log.info(roomMapper.getRoom(601));
    }

    @Test
    public void testUpdate() {
        RoomVO roomVO = roomMapper.getRoom(601);
        roomVO.setStatus(0);
        log.info(roomMapper.update(roomVO));
    }
}
