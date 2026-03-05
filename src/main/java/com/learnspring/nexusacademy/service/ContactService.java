package com.learnspring.nexusacademy.service;

import com.learnspring.nexusacademy.config.NexusAcademyProps;
import com.learnspring.nexusacademy.constants.NexusAcademyConstants;
import com.learnspring.nexusacademy.model.Contact;
import com.learnspring.nexusacademy.repository.ContactRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.function.Supplier;

/*
@Slf4j, is a Lombok-provided annotation that will automatically generate an SLF4J
Logger static property in the class at compilation time.
* */
@Slf4j
@Service
public class ContactService {

    @Autowired
    private ContactRepository contactRepository;

    @Autowired
    NexusAcademyProps NexusAcademyProps;

    /**
     * Save Contact Details into DB
     * @param contact
     * @return boolean
     */
    public boolean saveMessageDetails(Contact contact){
        boolean isSaved = false;
        contact.setStatus(NexusAcademyConstants.OPEN);
        Contact savedContact = contactRepository.save(contact);
        if(null != savedContact && savedContact.getContactId()>0) {
            isSaved = true;
        }
        return isSaved;
    }

    public Page<Contact> findMsgsWithOpenStatus(int pageNum,String sortField, String sortDir){
        int pageSize = NexusAcademyProps.getPageSize(); //5
        if(null!=NexusAcademyProps.getContact() && null!=NexusAcademyProps.getContact().get("pageSize")){
            pageSize = Integer.parseInt(NexusAcademyProps.getContact().get("pageSize").trim());
        }
        Pageable pageable = PageRequest.of(pageNum - 1, pageSize,
                sortDir.equals("asc") ? Sort.by(sortField).ascending()
                        : Sort.by(sortField).descending());
        Page<Contact> msgPage = contactRepository.findByStatusWithQuery(
                NexusAcademyConstants.OPEN,pageable);
        return msgPage;
    }

    public boolean updateMsgStatus(int contactId){
        boolean isUpdated = false;
        int rows = contactRepository.updateMsgStatusNative(NexusAcademyConstants.CLOSE,contactId);
        if(rows > 0) {
            isUpdated = true;
        }
        return isUpdated;
    }

}



