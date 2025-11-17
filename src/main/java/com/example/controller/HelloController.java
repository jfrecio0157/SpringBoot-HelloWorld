package com.example.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    /**
     * Return a hello world message.
     *
     * @return a hello world message
     */

    @GetMapping("/")
    public String hello() {

        return "Hello World";
    }
}