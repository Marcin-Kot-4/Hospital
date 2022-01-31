package com.kk.hospitalapp.web;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class MainController {
    @GetMapping("/aboutUs")
    public String aboutUs() {
        return "aboutUs";
    }

    @GetMapping("/issueReferral")
    public String issueReferral() {
        return "issueReferral";
    }

    @GetMapping("/issuePrescription")
    public String issuePrescription() {
        return "issuePrescription";
    }

    @GetMapping("/login")
    public String login() {
        return "start";
    }

    @GetMapping("/loginn")
    public String loginn() {
        return "loginn";
    }

    @GetMapping("/")
    public String home() {
        return "start";
    }

    @GetMapping("/doctor")
    public String doctor() {
        return "doctor";
    }

    @GetMapping("/patient")
    public String patient() {
        return "patient";
    }

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
