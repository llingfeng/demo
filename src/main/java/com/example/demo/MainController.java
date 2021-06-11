package com.example.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author llf
 */
@RestController
public class MainController {

    @RequestMapping("test")
    public Object test() {
        return "123";
    }

}
