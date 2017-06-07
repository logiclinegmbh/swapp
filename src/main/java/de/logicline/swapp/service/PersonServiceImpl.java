package de.logicline.swapp.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import de.logicline.swapp.model.Person;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;

import java.util.List;

/**
 * 
 * Spring Bean Implementation of the {@link PersonService}
 * Gets the Hibernate EntityManager injected to do the ORM magic.
 * You might consider to create an DAO (Data Access Object) Layer in order 
 * to separate business logic (usually located in the Service Components) from 
 * persistence logic.
 * 
 * (The M in MVC)
 * 
 * @author logicline
 *
 */
@Service
public class PersonServiceImpl implements PersonService {

    @PersistenceContext
    EntityManager em;
        
    @Transactional
    public void addPerson(Person person) {
        em.persist(person);
    }

    public List<Person> listPeople() {
        CriteriaQuery<Person> c = em.getCriteriaBuilder().createQuery(Person.class);
        c.from(Person.class);
        return em.createQuery(c).getResultList();
    }

    @Transactional
    public void removePerson(Integer id) {
        Person person = em.find(Person.class, id);
        if (null != person) {
            em.remove(person);
        }
    }
    
}
