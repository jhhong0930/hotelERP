package com.hotel.domain;

import lombok.Data;

@Data
public class EmpVO {
    private int eid;
    private String name;
    private String ssn;
    private String phone;
    private String did;
    private String jid;
    private int salary;
    private String enterDate;
    private String leaveDate;
}
