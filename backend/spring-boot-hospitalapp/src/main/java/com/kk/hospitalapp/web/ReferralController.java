package com.kk.hospitalapp.web;

import com.kk.hospitalapp.model.Referral;
import com.kk.hospitalapp.service.DoctorService;
import com.kk.hospitalapp.service.MedicalHistoryService;
import com.kk.hospitalapp.service.PatientService;
import com.kk.hospitalapp.service.ReferralService;
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

@Controller
public class ReferralController {

    @Autowired
    private ReferralService referralService;

    @Autowired
    private PatientService patientService;

    @Autowired
    private DoctorService doctorService;

    @Autowired
    private MedicalHistoryService medicalHistoryService;

    @GetMapping("/referralList")
    public String referralList(Model model) {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = userDetails.getUsername();


        List<Referral> referrals = referralService.findAllByPatientUserLogin(username);
        model.addAttribute("referrals", referrals);
        return "referralList";
    }

    @GetMapping("/ereferral")
    public String getAll(@RequestParam("referral_id") Long referralId, Model model){
        Referral referral = referralService.getById(referralId);
        if (referral == null){
            return "referralList";
        }

        model.addAttribute("referral", referral);

        return "ereferral";
    }

    @PostMapping("/issuedReferral")
    public String issuedPrescription(@RequestParam(name = "name") String name, @RequestParam(name = "surname") String surname,
                                     @RequestParam(name = "pesel") Long pesel, @RequestParam(name = "place") String place,
                                     @RequestParam(name = "diagnosis") String diagnosis, @RequestParam(name = "otherInformations") String otherInformations) {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = userDetails.getUsername();
        Referral referral = new Referral();
        referral.setPatient(patientService.getPatientByUserPesel(pesel));
        referral.setAccessCode(ThreadLocalRandom.current().nextLong(1000, 10000));
        referral.setIssued(LocalDate.now());
        referral.setExhibitor("Samodzielny Publiczny Centralny Szpital Kliniczny");
        referral.setPlace(place);
        referral.setDiagnosis(diagnosis);
        referral.setOther_informations(otherInformations);
        referral.setDoctor(doctorService.getDoctorByUserName(username));
        referral.setMedicalHistory(medicalHistoryService.getByPatientUserId(2L));

        referralService.save(referral);

        return "doctor";
    }

}
