package br.com.vilar.capril.model.entities;

import jakarta.persistence.*;


@Entity
@Table(name = "phones")
public class Phone {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String number;

    @ManyToOne
    @JoinColumn(name = "owner_id")
    private Owner owner;

    // Getters and Setters
}
