package com.blooddonation.controller;


import com.blooddonation.entity.Receiver;
import com.blooddonation.service.ReceiverService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/receiver")
public class ReceiverController {

    @Autowired
    private ReceiverService receiverService;

    // Show the receiver form
    @GetMapping
    public String showReceiverForm(Model model) {
        model.addAttribute("receiver", new Receiver());
        return "receiver"; // Ensure JSP file exists
    }

    // Save receiver details
    @PostMapping("/save")
    public String saveReceiver(@Valid @ModelAttribute Receiver receiver, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("receiver", receiver);
            return "receiver";
        }
        receiverService.saveReceiver(receiver);
        return "redirect:/receiver/list";
    }

    // Show the list of receivers
    @GetMapping("/list")
    public String showReceiverList(Model model) {
        List<Receiver> receivers = receiverService.getAllReceivers();
        System.out.println("Fetched Data: " + receivers);  // Debugging line
        model.addAttribute("receivers", receivers);
        return "receiver_list";
    }

}
