package com.blooddonation.service;


import com.blooddonation.entity.Donor;
import com.blooddonation.repository.DonorRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class DonorService {

    @Autowired
    private DonorRepository donorRepository;


    public Donor saveDonor(Donor donor) {
        return donorRepository.save(donor);
    }


}