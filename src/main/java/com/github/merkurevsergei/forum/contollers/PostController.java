package com.github.merkurevsergei.forum.contollers;

import com.github.merkurevsergei.forum.model.Post;
import com.github.merkurevsergei.forum.services.PostService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.Optional;

@Controller
public class PostController {
    private final PostService posts;

    public PostController(PostService posts) {
        this.posts = posts;
    }

    @GetMapping("/post")
    public String findAll(Model model) {
        model.addAttribute("posts", posts.findAll());
        return "index";
    }

    @GetMapping("/post/edit")
    public String create(Model model) {
        model.addAttribute("post", new Post());
        return "/post/edit";
    }

    @GetMapping("/post/edit/{id}")
    public String update(@PathVariable String id, Model model) {
        Optional<Post> post = posts.findOne(Integer.parseInt(id));
        if (post.isEmpty()) {
            return "index";
        }
        model.addAttribute("posts", post.get());
        return "/post/edit";
    }

    @PostMapping("/post/save")
    public String save(@ModelAttribute Post post) {
        post.setCreated(LocalDateTime.now());
        return "index";
    }

}

