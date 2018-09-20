package io.lishman.api.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity(name = "users")
public class User {

    @Id
    private Long userId;
    @Column(name="fullName")
    private String name;
    @Column(name="user_name")
    private String username;
    private String email;
    private String phone;
    private String website;
}