package com.DBAuthExample.AuthExample.Entity;

import jakarta.persistence.*;
import lombok.Data;


@Data
@Entity
@Table(name = "users_3")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private Long id;

//    @Column(unique = true)
    @Column(name = "user_name")
    private String name;

    @Column(name = "user_password")
    private String password;

    @Column(name = "user_role")
    private String role;
}
