package com.kk.hospitalapp.web;

import com.kk.hospitalapp.service.UserService;
import com.kk.hospitalapp.web.dto.UserRegistrationDto;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/registration")
@AllArgsConstructor
public class UserRegistrationController {

    private final UserService userService;

    @ModelAttribute("user")
    public UserRegistrationDto userRegistrationDto() {
        return new UserRegistrationDto();
    }

    /**
     * Metoda showRegistrationForm() wyświetla stronę registration.html z templates
     * @return
     */
    @GetMapping
    public String showRegistrationForm() {
        return "registration";
    }

    /**
     * Metoda registerUserAccount() po poprawnym wypełnieniu formularza, zostaje tworzone nowe konto użytkownika.
     * @return
     */
    @PostMapping
    public String registerUserAccount(@ModelAttribute("user")UserRegistrationDto registrationDto) {
        userService.save(registrationDto);
        return "redirect:/registration?success";
    }
}
