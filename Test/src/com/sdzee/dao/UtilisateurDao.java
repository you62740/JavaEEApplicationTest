package com.sdzee.dao;

import java.util.List;

import com.sdzee.beans.Utilisateur;

public interface UtilisateurDao {
    void ajouter( Utilisateur utilisateur );
    List<Utilisateur> lister();
}