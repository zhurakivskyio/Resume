package com.example.cv.controller;

import com.example.cv.model.ExperienceModel;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.persistence.Column;
import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
public class AuthController {
    @GetMapping("/login")
    public String getLogin() {
        return "aut/login";
    }


}
