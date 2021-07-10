package com.hotel.mapper;

import com.hotel.domain.EmpVO;
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
public class EmpMapperTest {

    @Setter(onMethod_ = @Autowired)
    private EmpMapper mapper;

    @Test
    public void testGetList() {
        mapper.getList().forEach(emp -> log.info(emp));
    }

    @Test
    public void testDetail() {
        log.info(mapper.detail(13));
    }

    @Test
    public void testInsert() {
        EmpVO emp = new EmpVO();
        emp.setName("건우히");
        emp.setSsn("000112-4444444");
        emp.setPhone("010-0000-0000");
        emp.setDid("D1");
        emp.setJid("J1");
        emp.setSalary(10000000);
        mapper.insert(emp);
        log.info(emp);
    }

    @Test
    public void testUpdate() {
        EmpVO emp = new EmpVO();
        emp.setEid(81);
        emp.setName("건우히");
        emp.setSsn("111111-2222222");
        emp.setPhone("010-0000-0000");
        emp.setDid("D2");
        emp.setJid("J2");
        emp.setSalary(13000000);
        mapper.update(emp);
        log.info(emp);
    }

    @Test
    public void testDelete() {
        log.info(mapper.delete(81));
    }

}