package com.blooddonation.controller;
import com.blooddonation.entity.Donor;
import com.blooddonation.service.DonorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class DonorController {

    @Autowired
    private DonorService donorService;

    @GetMapping("/donor")
    public String showDonorForm() {
        return "donor";
    }

    @PostMapping("/saveDonor")
    public String saveDonor(@ModelAttribute Donor donor) {
        donorService.saveDonor(donor);
        return "redirect:/donor";
    }
}
