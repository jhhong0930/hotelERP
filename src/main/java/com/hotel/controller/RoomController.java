package com.hotel.controller;

import com.hotel.domain.RoomVO;
import com.hotel.service.RoomService;
import com.sun.org.apache.xpath.internal.operations.Mod;
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

    RoomService roomService;

    @GetMapping("/")
    public String roomStatus(Model model) {
        model.addAttribute("roomList", roomService.getRoomList());
        return "room/status";
    }

    @GetMapping({"/room/detail", "/room/update"})
    public void roomDetail(Model model, @RequestParam("rno") int rno) {
        log.info("update or detail");
        model.addAttribute("getRoom", roomService.getRoom(rno));
    }

    @PostMapping("/room/update")
    public String roomUpdate(RoomVO vo, RedirectAttributes rttr) {
        roomService.update(vo);
        log.info(vo);
        if(roomService.update(vo) > 0) {
            rttr.addFlashAttribute("vo", "success");
        }
        log.info("update");
        String result = "redirect:/room/detail?rno=" + vo.getRno();
        return result;
    }

}
