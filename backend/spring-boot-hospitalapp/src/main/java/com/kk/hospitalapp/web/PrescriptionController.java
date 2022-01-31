package com.kk.hospitalapp.web;

import com.kk.hospitalapp.model.Prescription;
import com.kk.hospitalapp.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

/**
 * Klasa PrescriptionController do wczytywania templatów dla różnych adresów.
 */
@Controller
public class PrescriptionController {
    
    @Autowired
    private PrescriptionService prescriptionService;

    @Autowired
    private PatientService patientService;

    @Autowired
    private MedicineService medicineService;

    @Autowired
    private DoctorService doctorService;

    @Autowired
    private MedicalHistoryService medicalHistoryService;

    @Autowired
    private HospitalService hospitalService;

    /**
     * Metoda prescriptionList() wyświetla listę recept, które zostały wystawione zalogowanemu pacjentowi.
     * Zwraca template prescriptionList.html pod adresem /prescriptionList.
     * @param model
     * @return
     */
    @GetMapping("/prescriptionList")
    public String prescriptionList(Model model) {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = userDetails.getUsername();


        List<Prescription> prescriptions = prescriptionService.findAllByPatientUserLogin(username);
        model.addAttribute("prescriptions", prescriptions);
        return "prescriptionList";
    }

    /**
     * Metoda getAll() wyświetla receptę z bazy.
     * Zwraca template eprescription.html pod adresem /eprescription.
     * @param prescriptionId
     * @param model
     * @return
     */
    @GetMapping("/eprescription")
    public String getAll(@RequestParam("prescription_id") Long prescriptionId, Model model){
        Prescription prescription = prescriptionService.getById(prescriptionId);
        if (prescription == null){
            return "prescriptionList";
        }

        model.addAttribute("prescription", prescription);

        return "eprescription";
    }

    /**
     * Metoda issuedPrescription() zwraca template issuedPrescription.html
     * pod adresem /issuedPrescription.
     * Po poprawnym wypełnieniu formularza, do bazy zostaje dodana recepta.
     * @param name
     * @param surname
     * @param pesel
     * @param medicineName
     * @param packsNumber
     * @param dosage
     * @return
     */
    @PostMapping("/issuedPrescription")
    public String issuedPrescription(@RequestParam(name = "name") String name, @RequestParam(name = "surname") String surname,
                                 @RequestParam(name = "pesel") Long pesel, @RequestParam(name = "medicineName") String medicineName,
                                 @RequestParam(name = "packsNumber") int packsNumber, @RequestParam(name = "dosage") String dosage) {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = userDetails.getUsername();
        Prescription prescription = new Prescription();
        prescription.setPatient(patientService.getPatientByUserPesel(pesel));
        prescription.setAccess_code(ThreadLocalRandom.current().nextLong(1000, 10000));
        prescription.setIssued(LocalDate.now());
        prescription.setExhibitor("Samodzielny Publiczny Centralny Szpital Kliniczny");
        prescription.setDosage(dosage);
        prescription.setPacksNumber(packsNumber);
        prescription.setMedicine(medicineService.getByMedicineName(medicineName));
        prescription.setDoctor(doctorService.getDoctorByUserName(username));
        prescription.setMedicalHistory(medicalHistoryService.getByPatientUserId(2L));
        prescription.setHospital(hospitalService.getByHospitalId(1L));

        prescriptionService.save(prescription);

        return "doctor";
    }
}
