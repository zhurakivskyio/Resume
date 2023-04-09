package com.example.cv.controller;

import com.example.cv.model.EducationModel;
import com.example.cv.model.ExperienceModel;
import com.example.cv.service.EducationService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
public class EducationController {

    private  final EducationService service;
    @GetMapping("/education")
    public String getEducationList (Model model){
        List<EducationModel> educationList = service.getEducationList();
        model.addAttribute("educationModel", educationList);
        return "education/education";
    }

    @PostMapping("/addEducation")
    public RedirectView postEditEducation(EducationModel editEducation) {
        service.saveEditEducation(editEducation);
        return new RedirectView("/education");
    }

    @PostMapping("/removeEducation/{id}")
    public RedirectView removeEducation(@PathVariable("id") Long id){
        service.removeEducation(id);
        return new RedirectView("/education");
    }

    @GetMapping("/editEducation/{id}")
    public String getEducation(@PathVariable("id") Long id, Model model) {
        EducationModel educationModel = service.findById(id);
        model.addAttribute("educationModel", educationModel);
        return "education/editEducation";
    }

}
