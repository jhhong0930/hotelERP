package com.hotel.controller;

import com.hotel.domain.EmpVO;
import com.hotel.service.EmpService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

@Controller
@RequestMapping("/emp/*")
@AllArgsConstructor
@Log4j
public class EmpController {

    private EmpService service;

    @GetMapping("/status")
    public void empStatus(Model model) {
        model.addAttribute("empList", service.getEmpList());
    }

    @GetMapping({"/detail", "/update"})
    public void getEmp(int eid, Model model) {
        model.addAttribute("getEmp", service.getEmp(eid));
        EmpVO empVO = service.getEmp(eid);
        log.info(empVO.getEnterDate());
    }

    @GetMapping("/write")
    public void writeEmp() { }

    @PostMapping("/write")
    public String postWriteEmp(EmpVO empVo) {
        service.create(empVo);
        return "redirect:/emp/status";
    }

    @PostMapping("/update")
    public String postUpdateEmp(EmpVO empVo) {
        Date enterDate = service.getEmp(empVo.getEid()).getEnterDate();
        log.info("Before Update : " + enterDate);
        if (empVo.getEnterDate() == null) {
            empVo.setEnterDate(enterDate);
        }
        service.update(empVo);
        log.info("After: " + empVo);
        return "redirect:/emp/detail?eid=" + empVo.getEid();
    }

    @PostMapping("/delete")
    public String postDeleteEmp(int eid) {
        service.delete(eid);
        return "redirect:/emp/status";
    }
}
