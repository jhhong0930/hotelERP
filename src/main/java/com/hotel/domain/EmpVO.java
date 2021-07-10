package com.hotel.domain;

import lombok.Data;

import java.util.Date;

@Data
public class EmpVO {

    private int eid;
    private String name;
    private String ssn;
    private String phone;
    private String did;
    private String jid;
    private int salary;
    private Date enterDate;
    private Date leaveDate;

}
