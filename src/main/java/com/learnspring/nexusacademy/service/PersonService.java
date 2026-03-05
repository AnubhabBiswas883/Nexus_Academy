package com.learnspring.nexusacademy.service;

import com.learnspring.nexusacademy.constants.NexusAcademyConstants;
import com.learnspring.nexusacademy.model.Person;
import com.learnspring.nexusacademy.model.Roles;
import com.learnspring.nexusacademy.repository.PersonRepository;
import com.learnspring.nexusacademy.repository.RolesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class PersonService {

    @Autowired
    private PersonRepository personRepository;

    @Autowired
    private RolesRepository rolesRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public boolean createNewPerson(Person person){
        boolean isSaved = false;
        Roles role = rolesRepository.getByRoleName(NexusAcademyConstants.STUDENT_ROLE);
        person.setRoles(role);
        person.setPwd(passwordEncoder.encode(person.getPwd()));
        person = personRepository.save(person);
        if (null != person && person.getPersonId() > 0)
        {
            isSaved = true;
        }
        return isSaved;
    }
}



