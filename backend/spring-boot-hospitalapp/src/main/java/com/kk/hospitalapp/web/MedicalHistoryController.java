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

@Controller
public class MedicalHistoryController {

    @Autowired
    private MedicalHistoryService medicalHistoryService;

    @GetMapping("/historyEntry")
    public String historyEntry() {
        return "historyEntry";
    }

    @PostMapping("/medicalHistory")
    public String medicalHistory(@RequestParam(name = "pesel") Long pesel, Model model) {
        List<MedicalHistory> medicalHistoryList = medicalHistoryService.getAllByPatientUser_Pesel(pesel);
        model.addAttribute("medicalHistoryList", medicalHistoryList);
        return "medicalHistory";
    }

    @GetMapping("/enterPesel")
    public String enterPesel() {
        return "enterPesel";
    }

}
