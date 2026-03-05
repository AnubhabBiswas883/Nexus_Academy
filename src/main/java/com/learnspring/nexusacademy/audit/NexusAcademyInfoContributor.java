package com.learnspring.nexusacademy.audit;

import org.springframework.boot.actuate.info.Info;
import org.springframework.boot.actuate.info.InfoContributor;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

@Component
public class NexusAcademyInfoContributor implements InfoContributor {

    @Override
    public void contribute(Info.Builder builder) {
        Map<String, String> nexusMap = new HashMap<String, String>();
        nexusMap.put("App Name", "NexusAcademy");
        nexusMap.put("App Description", "Nexus Academy Web Application for Students and Admin");
        nexusMap.put("App Version", "1.0.0");
        nexusMap.put("Contact Email", "info@nexusacademy.com");
        nexusMap.put("Contact Mobile", "+1(21) 673 4587");
        builder.withDetail("NexusAcademy-info", nexusMap);
    }

}



