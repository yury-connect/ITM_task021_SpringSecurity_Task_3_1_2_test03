package com.DBAuthExample.AuthExample.Entity;

import jakarta.persistence.*;
import lombok.Data;


@Data
@Entity
@Table(name = "users_3")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

//    @Column(unique = true)
    @Column(name = "name")
    private String name;

    @Column(name = "password")
    private String password;

    @Column(name = "role")
    private String role;

}
