package br.com.vilar.capril.model.entities;

import jakarta.persistence.*;


import java.util.List;

@Entity
@Table(name = "goat_farms")
public class GoatFarm {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String registrationNumber;

    @OneToOne
    @JoinColumn(name = "owner_id")
    private Owner owner;

    @OneToOne
    @JoinColumn(name = "address_id")
    private Address address;

    @OneToMany(mappedBy = "goatFarm")
    private List<Goat> goats;

    // Getters and Setters
}

