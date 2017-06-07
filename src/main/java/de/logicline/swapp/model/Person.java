package de.logicline.swapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * The person Entity.
 * Represents the Table "Person" in the Database
 * 
 * @author logicline
 *
 */
@Entity
@Table(name="Person")
public class Person {

    @Id
    @GeneratedValue
    private Integer id;

    private String firstName;

    private String lastName;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

}
