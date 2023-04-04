package com.example.cv.service;

import com.example.cv.model.ExperienceModel;
import com.example.cv.repository.ExperienceRepository;
import com.example.cv.util.ExpierenceException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class ExperienceService {
    private final ExperienceRepository repo;

    public void addExperience(ExperienceModel experience) throws ExpierenceException {
        try{
            repo.save(experience);
        }catch (Exception e){
            throw new ExpierenceException("Failed exp addition", e);
        }
    }

    public List<ExperienceModel> getExperienceList(){
        return repo.findAll();
    }

    public void saveEditExpierence(ExperienceModel editExperience){
        repo.save(editExperience);
    }

    public void removeExperience(Long id){
        repo.deleteById(id);
    }

}
