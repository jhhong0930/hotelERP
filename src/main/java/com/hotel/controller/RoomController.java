package com.hotel.controller;

import com.hotel.service.RoomService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
@AllArgsConstructor
public class RoomController {

    RoomService roomService;

    @GetMapping("/")
    public String roomStatus(Model model) {
        model.addAttribute("roomList", roomService.getRoomList());
        return "room/roomStatus";
    }

}
