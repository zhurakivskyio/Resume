package com.example.cv.model;

import jdk.jfr.Enabled;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class ExperienceModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "position")
    private String position;

    @Column(name= "company_name")
    private String companyName;

    @Column(name = "description")
    private String description;

    @DateTimeFormat(pattern = "MMMM yyyy")
    @Column(name = "work_start")
    private Date workStartDate;

    @DateTimeFormat(pattern = "MMMM yyyy")
    @Column(name = "work_finish")
    private Date workFinishDate;


}
