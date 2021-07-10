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

@Controller
@RequestMapping("/emp/*")
@AllArgsConstructor
@Log4j
public class EmpController {

    private EmpService service;

    @GetMapping("/list")
    public void getList(Model model) {
        model.addAttribute("list", service.getList());
    }

    @GetMapping({"/detail", "/update"})
    public void detail(int eid, Model model) {
        model.addAttribute("emp", service.detail(eid));
    }

    @PostMapping("/insert")
    public String insert(EmpVO emp) {
        service.insert(emp);
        return "redirect:/emp/list";
    }

    @PostMapping("/update")
    public String update(EmpVO emp) {
        service.update(emp);
        return "redirect:/emp/detail";
    }

    @PostMapping("/delete")
    public String delete(int eid) {
        service.delete(eid);
        return "redirect:/emp/list";
    }

    @GetMapping("/insert")
    public void insert() {

    }

}
