package com.github.merkurevsergei.forum.services;

import com.github.merkurevsergei.forum.model.Post;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class PostService {

    private final List<Post> posts = new ArrayList<>();

    public PostService() {
        posts.add(Post.of("Продаю машину ладу 01."));
    }

    public List<Post> findAll() {
        return posts;
    }

    public Optional<Post> findOne(int id) {
        return Optional.ofNullable(posts.get(id));
    }
}
