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
public class EmpMapperTests {

    @Setter(onMethod_ = @Autowired)
    private EmpMapper empMapper;

    @Test
    public void testGetList() {
        empMapper.getEmpList().forEach(emp -> log.info(emp));
    }

    @Test
    public void testGetEmp() {
        log.info(empMapper.getEmp(10));
    }

    @Test
    public void testCreate() {
        EmpVO empVO = new EmpVO();
        empVO.setName("홍길동");
        empVO.setSsn("990101-1234567");
        empVO.setPhone("010-1234-5678");
        empVO.setDid("D1");
        empVO.setJid("J3");
        empVO.setSalary(5000000);
        log.info(empMapper.create(empVO));
    }

    @Test
    public void testUpdate() {
        EmpVO empVO = empMapper.getEmp(1);
        empVO.setName("홍길동1");
        empVO.setSsn("990101-2234567");
        empVO.setPhone("010-1234-5678");
        empVO.setDid("D1");
        empVO.setJid("J3");
        empVO.setSalary(5000000);
        log.info(empMapper.update(empVO));
    }

    @Test
    public void testDelete() {
        log.info(empMapper.delete(82));
    }
}
