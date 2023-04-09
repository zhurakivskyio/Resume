package com.example.cv.service;

import com.example.cv.model.EducationModel;
import com.example.cv.model.ExperienceModel;
import com.example.cv.repository.EducationRepository;
import com.example.cv.util.EducationException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class EducationService {
    private final EducationRepository repo;

    public void addEducation(EducationModel education) throws EducationException {
        try {
            repo.save(education);
        } catch (Exception e) {
            throw new EducationException(" Failed education addition", e);
        }
    }

    public List<EducationModel> getEducationList(){
        return repo.findAll();
    }

    public void saveEditEducation(EducationModel editEducation){
        repo.save(editEducation);
    }

    public void removeEducation(Long id){
        repo.deleteById(id);
    }

    public EducationModel findById(Long id) {
        return repo.findById(id).orElse(null);
    }

}
