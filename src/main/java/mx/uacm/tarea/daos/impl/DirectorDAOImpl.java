/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.uacm.tarea.daos.impl;

import javax.persistence.EntityManager;
import mx.uacm.tarea.daos.DirectorDAO;
import mx.uacm.tarea.entidades.Director;

public class DirectorDAOImpl extends GenericDAOImpl<Director, Integer> implements DirectorDAO {

    public DirectorDAOImpl(EntityManager em) {
        super(em);
    }

}
