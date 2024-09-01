package br.com.vilar.capril.model.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

import java.time.LocalDate;

@Entity
@Table(name = "eventos")
public class Event {
    private Long id;
    private LocalDate date;
    private String description;

    private EventType eventType;

    private Goat goat;

    // Getters and Setters
}
