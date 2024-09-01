package br.com.vilar.capril.model.entities;


import jakarta.persistence.*;

@Entity
@Table(name = "relationships")
public class Relationship {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String type;
    private String name;
    private String registrationNumber;

    @ManyToOne
    @JoinColumn(name = "goat_id")
    private Goat goat;

    // Getters and Setters
}
