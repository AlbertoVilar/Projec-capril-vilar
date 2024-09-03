package br.com.vilar.capril.model.entities;

import jakarta.persistence.*;


@Entity
@Table(name = "phones")
public class Phone {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String ddd;
    private String number;

    @ManyToOne
    @JoinColumn(name = "owner_id")
    private Owner owner;

    @ManyToOne
    @JoinColumn(name = "goatFarm_id")
    private GoatFarm goatFarm;

    // Getters and Setters
}
