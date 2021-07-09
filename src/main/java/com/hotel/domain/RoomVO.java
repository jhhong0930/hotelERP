package com.hotel.domain;

import lombok.Data;

@Data
public class RoomVO {
    private int roomNo;
    private String roomGrade;
    private int price;
    private int status;
}
