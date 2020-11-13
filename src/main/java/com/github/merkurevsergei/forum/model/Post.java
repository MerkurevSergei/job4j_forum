package com.github.merkurevsergei.forum.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.time.LocalDateTime;
import java.util.Calendar;

@Data
@EqualsAndHashCode
public class Post {
    private int id;
    private String name;
    private String desc;
    private LocalDateTime created;

    public static Post of(String name) {
        Post post = new Post();
        post.name = name;
        return post;
    }
}
