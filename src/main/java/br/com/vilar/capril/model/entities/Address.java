package br.com.vilar.capril.model.entities;

import jakarta.persistence.*;



@Entity
@Table(name = "addresses")
public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String street;
    private String city;
    private String state;
    private String postalCode;
    private String country;

    // Getters and Setters
}
