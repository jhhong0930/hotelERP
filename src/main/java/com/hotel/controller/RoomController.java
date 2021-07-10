package com.hotel.controller;

import com.hotel.domain.RoomVO;
import com.hotel.service.RoomService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/")
@AllArgsConstructor
@Log4j
public class RoomController {

    private RoomService service;

    @GetMapping("/")
    public String roomStatus(Model model) {
        model.addAttribute("list", service.getList());
        return "room/status";
    }

    @GetMapping("/room/detail")
    public String roomDetail(int rno, Model model) {
        model.addAttribute("room", service.detail(rno));
        log.info(service.detail(rno));
        return "room/detail";
    }

    @GetMapping("/room/update")
    public String get(Model model, int rno) {
        model.addAttribute("room", service.detail(rno));
        return "room/update";
    }

    @PostMapping("/room/update")
    public String roomUpdate(RoomVO room, RedirectAttributes rttr) {
        log.info("before: " + room);
        service.update(room);
        log.info("after: " + room);
        return "redirect:/room/detail?rno=" + room.getRno();
    }

}
