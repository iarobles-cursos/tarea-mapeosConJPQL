/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.uacm.tarea.daos.impl;

import javax.persistence.EntityManager;
import mx.uacm.tarea.daos.PeliculaDAO;
import mx.uacm.tarea.entidades.Pelicula;

public class PeliculaDAOImpl extends GenericDAOImpl<Pelicula, Integer> implements PeliculaDAO {

    public PeliculaDAOImpl(EntityManager em) {
        super(em);
    }

}
