package com.hotel.controller;

import lombok.extern.log4j.Log4j;
import org.junit.Test;
import org.junit.Before;
import lombok.Setter;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
        "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class RoomControllerTest {

    @Setter(onMethod_ = {@Autowired})
    private WebApplicationContext ctx;

    private MockMvc mockMvc;

    @Before
    public void setup() {
        this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
    }

    @Test
    public void testUpdate() throws Exception {
        String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/update")
                .param("roomNo", "601")
                .param("grade", "standard")
                .param("price", "80000")
                .param("status", "2"))
                .andReturn().getModelAndView().getViewName();
        log.info(resultPage);
    }


}