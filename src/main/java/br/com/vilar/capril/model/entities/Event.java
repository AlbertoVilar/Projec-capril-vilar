package br.com.vilar.capril.model.entities;

import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
@Table(name = "eventos")
public class Event {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private LocalDate date;
    private String description;

    @Enumerated(EnumType.STRING)
    private EventType eventType;

    @ManyToOne
    @JoinColumn(name = "goat_id")
    private Goat goat;


}
