package com.kk.hospitalapp.web;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Klasa MainController do wczytywania templatów dla różnych adresów.
 */
@Controller
public class MainController {
    /** Metoda aboutUs() zwraca template aboutUs.html, pod adresem /aboutUs */
    @GetMapping("/aboutUs")
    public String aboutUs() {
        return "aboutUs";
    }

    /** Metoda issueReferral() zwraca template issueReferral.html, pod adresem /issueReferral */
    @GetMapping("/issueReferral")
    public String issueReferral() {
        return "issueReferral";
    }

    /** Metoda issuePrescription() zwraca template issuePrescription.html, pod adresem /issuePrescription */
    @GetMapping("/issuePrescription")
    public String issuePrescription() {
        return "issuePrescription";
    }

    /** Metoda start() zwraca template start.html, pod adresem /login */
    @GetMapping("/login")
    public String login() {
        return "start";
    }

    /** Metoda loginn() zwraca template loginn.html, pod adresem /loginn */
    @GetMapping("/loginn")
    public String loginn() {
        return "loginn";
    }

    /** Metoda start() zwraca template start.html, pod adresem / */
    @GetMapping("/")
    public String home() {
        return "start";
    }

    /** Metoda doctor() zwraca template doctor.html, pod adresem /doctor */
    @GetMapping("/doctor")
    public String doctor() {
        return "doctor";
    }

    /** Metoda patient() zwraca template patient.html, pod adresem /patient */
    @GetMapping("/patient")
    public String patient() {
        return "patient";
    }

    /** Metoda loginPageRedirect() zwraca template patient.html albo doctor.html
     * w zależności od roli użytkownika,
     * pod adresem /success */
    @RequestMapping("/success")
    public void loginPageRedirect(HttpServletRequest request, HttpServletResponse response, Authentication authResult) throws IOException, ServletException {

        String role =  authResult.getAuthorities().toString();

        if(role.contains("ADMIN")){
            response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/doctor"));
        }
        else if(role.contains("USER")) {
            response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/patient"));
        }
    }
}
