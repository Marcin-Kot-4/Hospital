package com.kk.hospitalapp;

import com.kk.hospitalapp.model.Referral;
import com.kk.hospitalapp.service.DoctorService;
import com.kk.hospitalapp.service.MedicalHistoryService;
import com.kk.hospitalapp.service.PatientService;
import com.kk.hospitalapp.service.ReferralService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.time.LocalDate;
import java.util.concurrent.ThreadLocalRandom;

public class ReferralTest extends SpringBootHospitalappApplicationTests {

    @Autowired
    private PatientService patientService;

    @Autowired
    private DoctorService doctorService;

    @Autowired
    private MedicalHistoryService medicalHistoryService;

    @Autowired
    private ReferralService referralService;

    @Test
    public void referralDateTest() throws Exception {
        Referral referral = new Referral();
        referral.setPatient(patientService.getPatientByUserPesel(75111129001L));
        referral.setAccessCode(ThreadLocalRandom.current().nextLong(1000, 10000));
        referral.setIssued(LocalDate.now());
        referral.setExhibitor("Samodzielny Publiczny Centralny Szpital Kliniczny");
        referral.setPlace("test");
        referral.setDiagnosis("diagnosis");
        referral.setOther_informations("otherInformations");
        referral.setDoctor(doctorService.getDoctorByUserName("DR_LEK"));
        referral.setMedicalHistory(medicalHistoryService.getByPatientUserId(2L));

        Referral referralTest = referralService.save(referral);

        assert(referralTest.getIssued().isEqual(LocalDate.now()));
    }

}
