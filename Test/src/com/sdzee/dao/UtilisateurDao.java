package com.sdzee.dao;

import java.util.List;

import com.sdzee.beans.Utilisateur;

public interface UtilisateurDao {
    void ajouter( Utilisateur utilisateur ) throws DaoException;
    List<Utilisateur> lister() throws DaoException;
}