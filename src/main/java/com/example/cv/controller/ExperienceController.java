package com.example.cv.controller;

import com.example.cv.model.ExperienceModel;
import com.example.cv.service.ExperienceService;
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
public class ExperienceController {

private final ExperienceService service;
    @GetMapping("/experience")
    public String getExperienceList(Model model) {
        List<ExperienceModel> experienceList = service.getExperienceList();
        model.addAttribute("experienceModel", experienceList);
        return "experience/experience";
    }
    @PostMapping("/addExperience")
    public RedirectView postEditExperience(ExperienceModel editExperience) {
        service.saveEditExpierence(editExperience);
        return new RedirectView("/experience");
    }

    @PostMapping("/editExperience")
    public RedirectView removeStudent(Long id){
        service.removeExperience(id);
        return new RedirectView("/experience");
    }


}
