package br.com.vilar.capril.model.entities;

import jakarta.persistence.*;


import java.util.Date;
import java.util.List;

@Entity
@Table(name = "goats")
public class Goat {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String registrationNumber;
    private String breeder;
    private String ownerName;
    private String breed;
    private String coatColor;
    private String status;
    private String gender;
    private String category;
    private String tod;
    private String toe;
    private Date birthDate;

    @ManyToOne
    @JoinColumn(name = "goatFarm_id")
    private GoatFarm goatFarm;

    @OneToMany(mappedBy = "goat")
    private List<Relationship> relationships;

    @OneToMany(mappedBy = "goat", cascade = CascadeType.ALL, orphanRemoval = true)
   private List<Event> events;
}
