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
    @JoinColumn(name = "address_id")
    private Address address;

    @ManyToOne
    @JoinColumn(name = "owner_id")
    private Owner owner;

    @OneToMany(mappedBy = "goatFarm", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Goat> goats;

    public GoatFarm() {
        super();
    }

    // Getters and Setters
}
