package com.learnspring.nexusacademy.repository;

import com.learnspring.nexusacademy.model.Address;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AddressRepository extends JpaRepository<Address, Integer> {

}



