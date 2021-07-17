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
    }

    @GetMapping("/write")
    public void writeEmp() { }

    @PostMapping("/write")
    public String postWriteEmp(EmpVO empVo) {
        service.create(empVo);
        return "redirect:/emp/status";
    }

    @PostMapping("/update")
    public String postUpdateEmp(EmpVO empVo, Model model) {
        String enterDate = service.getEmp(empVo.getEid()).getEnterDate();
        log.info("Before Update : " + enterDate);
        if (empVo.getEnterDate() == null) {
            Date nowTime = new Date();
            empVo.setEnterDate(enterDate + " " + nowTime);
        }
        service.update(empVo);

        model.addAttribute("msg","회원 수정 성공");
        model.addAttribute("url","/emp/detail?eid=" + empVo.getEid());

        log.info("After: " + empVo);
        return "/common/alert";
    }

    @RequestMapping("/delete")
    public String postDeleteEmp(int eid, Model model) {

        if (service.delete(eid) > 0) {
            model.addAttribute("msg","회원 삭제 성공");
            model.addAttribute("url","/emp/status");
        } else {
            model.addAttribute("msg","회원 삭제 실패");
            model.addAttribute("url","/emp/status");
        }
        return "/common/alert";
    }
}
