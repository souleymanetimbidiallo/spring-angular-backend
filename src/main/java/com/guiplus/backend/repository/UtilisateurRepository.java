package com.guiplus.backend.repository;

import com.guiplus.backend.model.Utilisateur;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface UtilisateurRepository extends JpaRepository<Utilisateur, UUID> {
}