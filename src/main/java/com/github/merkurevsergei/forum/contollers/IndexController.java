package com.github.merkurevsergei.forum.contollers;

import com.github.merkurevsergei.forum.services.PostService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
    private final PostService posts;

    public IndexController(PostService posts) {
        this.posts = posts;
    }

    @GetMapping({"/", "/index"})
    public String index(Model model) {
        model.addAttribute("posts", posts.findAll());
        return "index";
    }
}
