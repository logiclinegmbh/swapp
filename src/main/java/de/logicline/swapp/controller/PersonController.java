package de.logicline.swapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.logicline.swapp.model.Person;
import de.logicline.swapp.service.PersonService;

import java.util.Map;

/**
 * The http controller handles http client interaction
 * <ul>
 *    <li>delegates to the proper service (business logic)</li>
 *    <li>delegates to the proper directs to the correct response page</li>
 * </ul>
 *  
 *  (The C in MVC)
 *  
 * @author logicline
 *
 */
@Controller
@RequestMapping("/people")
public class PersonController {

   @Autowired
    private PersonService personService;

    @RequestMapping("/")
    public String listPeople(Map<String, Object> map) {

        map.put("person", new Person());
        map.put("peopleList", personService.listPeople());

        return "people";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addPerson(@ModelAttribute("person") Person person, BindingResult result) {

        personService.addPerson(person);

        return "redirect:/people/";
    }

    @RequestMapping("/delete/{personId}")
    public String deletePerson(@PathVariable("personId") Integer personId) {

        personService.removePerson(personId);

        return "redirect:/people/";
    }
}
