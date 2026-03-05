package com.learnspring.nexusacademy.repository;

import com.learnspring.nexusacademy.model.NexusClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NexusClassRepository extends JpaRepository<NexusClass, Integer> {

}



