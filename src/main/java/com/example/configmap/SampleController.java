package com.example.configmap;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SampleController {

    @Value("${sample.message}")
    String message;

    @GetMapping("/message")
    public String getMessage() {
        return message;
    }

    @GetMapping("/")
    public String test() {
        return "Hello";
    }
}