package com.hotel.persistence;

import lombok.extern.log4j.Log4j;
import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.DriverManager;

import static org.junit.Assert.fail;


@Log4j
public class JDBCTest {

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void testConnection() {

        try(Connection con =
                    DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/mysql?serverTimezone=Asia/Seoul",
                            "root",
                            "qwe123!@#")){
            System.out.println(con);
        } catch (Exception e) {
            fail(e.getMessage());
        }

    }

}