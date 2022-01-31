package com.kk.hospitalapp;

import com.kk.hospitalapp.model.Prescription;
import com.kk.hospitalapp.service.*;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.time.LocalDate;
import java.util.concurrent.ThreadLocalRandom;

public class PrescriptionTest extends SpringBootHospitalappApplicationTests{

    @Autowired
    private PatientService patientService;

    @Autowired
    private DoctorService doctorService;

    @Autowired
    private MedicalHistoryService medicalHistoryService;

    @Autowired
    private PrescriptionService prescriptionService;

    @Autowired
    private MedicineService medicineService;

    @Autowired
    private HospitalService hospitalService;

    @Test
    public void referralDateTest() throws Exception {
        Prescription prescription = new Prescription();
        prescription.setPatient(patientService.getPatientByUserPesel(75111129001L));
        prescription.setAccess_code(ThreadLocalRandom.current().nextLong(1000, 10000));
        prescription.setIssued(LocalDate.now());
        prescription.setExhibitor("Samodzielny Publiczny Centralny Szpital Kliniczny");
        prescription.setDosage("dosage");
        prescription.setPacksNumber(1);
        prescription.setMedicine(medicineService.getByMedicineName("Gripex"));
        prescription.setDoctor(doctorService.getDoctorByUserName("DR_LEK"));
        prescription.setMedicalHistory(medicalHistoryService.getByPatientUserId(2L));
        prescription.setHospital(hospitalService.getByHospitalId(1L));

        Prescription prescriptionTest = prescriptionService.save(prescription);

        assert(prescriptionTest.getIssued().isEqual(LocalDate.now()));
    }
}
