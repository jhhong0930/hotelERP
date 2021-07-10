package com.hotel.service;

import com.hotel.domain.EmpVO;
import com.hotel.mapper.EmpMapper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class EmpServiceImpl implements EmpService{

    private EmpMapper mapper;


    @Override
    public List<EmpVO> getList() {
        return mapper.getList();
    }

    @Override
    public EmpVO detail(int eid) {
        return mapper.detail(eid);
    }

    @Override
    public int insert(EmpVO emp) {
        return mapper.insert(emp);
    }

    @Override
    public int update(EmpVO emp) {
        return mapper.update(emp);
    }

    @Override
    public int delete(int eid) {
        return mapper.delete(eid);
    }
}
