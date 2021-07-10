package com.hotel.service;

import com.hotel.domain.EmpVO;
import com.hotel.mapper.EmpMapper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class EmpServiceImpl implements EmpService{

    private EmpMapper empMapper;

    @Override
    public List<EmpVO> getEmpList() {
        return empMapper.getEmpList();
    }

    @Override
    public EmpVO getEmp(int eid) {
        return empMapper.getEmp(eid);
    }

    @Override
    public int create(EmpVO empVO) {
        return empMapper.create(empVO);
    }

    @Override
    public int update(EmpVO empVO) {
        return empMapper.update(empVO);
    }

    @Override
    public int delete(int eid) {
        return empMapper.delete(eid);
    }
}
