package com.hotel.service;

import com.hotel.domain.RoomVO;
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
public class RoomServiceTest {

    @Setter(onMethod_ = @Autowired)
    private RoomService service;

    @Test
    public void testUpdate() {
        RoomVO room = new RoomVO();
        room.setRoomNo(601);
        room.setGrade("standard");
        room.setPrice(80000);
        room.setStatus(3);
        log.info(service.update(room));
    }

}