package com.example.cv.service;

import com.example.cv.model.ExperienceModel;
import com.example.cv.repository.ExpierenceRepository;
import com.example.cv.util.ExpierenceException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class ExpierenceService {
    private final ExpierenceRepository repo;

    public void addExpierence(ExperienceModel experience) throws ExpierenceException {
        try{
            repo.save(experience);
        }catch (Exception e){
            throw new ExpierenceException("Nie udało się dodać expa", e);
        }
    }

}
