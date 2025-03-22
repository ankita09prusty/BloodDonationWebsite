package com.blooddonation.service;

import com.blooddonation.entity.Receiver;
import com.blooddonation.repository.ReceiverRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ReceiverService {

    @Autowired
    private ReceiverRepository receiverRepository;

    public Receiver saveReceiver(Receiver receiver) {
        return receiverRepository.save(receiver);
    }

    public List<Receiver> getAllReceivers() {
        return receiverRepository.findAll();
    }
}
