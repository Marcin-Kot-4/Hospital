package com.kk.hospitalapp.web;

import com.kk.hospitalapp.model.MedicalHistory;
import com.kk.hospitalapp.service.MedicalHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Klasa MedicalHistoryController do wczytywania templatów dla różnych adresów.
 */
@Controller
public class MedicalHistoryController {

    @Autowired
    private MedicalHistoryService medicalHistoryService;

    /** Metoda medicalHistory() zwraca template medicalHistory.html gdy isnieje Historia Pacjenta o podanyym peselu,
     * pod adresem /medicalHistory */
    @PostMapping("/medicalHistory")
    public String medicalHistory(@RequestParam(name = "pesel") Long pesel, Model model) {
        List<MedicalHistory> medicalHistoryList = medicalHistoryService.getAllByPatientUser_Pesel(pesel);
        model.addAttribute("medicalHistoryList", medicalHistoryList);
        return "medicalHistory";
    }

    /** Metoda enterPesel() zwraca template enterPesel.html, pod adresem /enterPesel */
    @GetMapping("/enterPesel")
    public String enterPesel() {
        return "enterPesel";
    }

}
