package com.AirlineTickets.controller;

import com.AirlineTickets.entity.Country;
import com.AirlineTickets.service.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CountryController {

    @Autowired
    private CountryService countryService;

    @GetMapping("/country")
    public String country(Model model){
        model.addAttribute("countries", countryService.findAll());
        model.addAttribute("country", new Country());
        return "country";
    }

    @PostMapping("/country")
    public String saveCounry(@ModelAttribute Country country, Model model){
        countryService.save(country);
        return "redirect:/country";
    }

}
