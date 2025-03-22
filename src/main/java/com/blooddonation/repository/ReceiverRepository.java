package com.blooddonation.repository;


import com.blooddonation.entity.Receiver;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReceiverRepository extends JpaRepository<Receiver, Long> {
}

