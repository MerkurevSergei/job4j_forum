package com.github.merkurevsergei.forum.contollers;

import com.github.merkurevsergei.forum.model.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;

@Controller
public class SecurityController {

    @Inject
    private PasswordEncoder encoder;

    @GetMapping("/login")
    public String logIn(@RequestParam(value = "error", required = false) String error,
                        Model model) {
        model.addAttribute("msg", error != null ? "Username or Password is incorrect!" : null);
        return "security/login";
    }

    @GetMapping("/logout")
    public String logOut(Model model) {
        model.addAttribute("msg", "You have been successfully logged out!");
        return "security/login";
    }

    @GetMapping("/sign-up")
    public String signUp() {
        return "security/signup";
    }

    @PostMapping("/sign-up")
    public String signUpSuccess() {
        return "security/login";
    }
}
