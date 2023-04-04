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

    @Column(name = "title")
    private String title;

    @Column(name= "subtitle")
    private String subtitle;

    @Column(name = "description")
    private String description;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "date_from")
    private Date dateFrom;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "date_to")
    private Date dateTo;


}
