package com.hotel.mapper;

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
}
