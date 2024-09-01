package br.com.vilar.capril.model.entities;

import jakarta.persistence.*;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "owners")
public class Owner {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String email;

    @OneToOne(mappedBy = "owner")
    private GoatFarm goatFarm;

    @OneToOne
    @JoinColumn(name = "address_id")
    private Address address;

    @OneToMany(mappedBy = "owner")
    private List<Phone> phones;

    // Getters and Setters
}

