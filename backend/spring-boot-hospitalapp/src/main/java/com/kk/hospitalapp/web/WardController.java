package com.kk.hospitalapp.web;

import com.kk.hospitalapp.model.Ward;
import com.kk.hospitalapp.service.WardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

/**
 * Klasa WardController do wczytywania templata.
 */
@Controller
public class WardController {

    @Autowired
    private WardService wardService;

    /**
     * Metoda getAll() wyświetla liste oddziałów.
     * Zwraca template wardList.html pod adresem /wardList.
     * @param model
     * @return
     */
    @GetMapping("/wardList")
    public String getAll(Model model){
        List<Ward> wards = wardService.getAll();
        model.addAttribute("wards", wards);
        return "wardList";
    }

}
