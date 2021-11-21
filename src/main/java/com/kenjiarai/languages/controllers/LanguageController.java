package com.kenjiarai.languages.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import com.kenjiarai.languages.models.Language;
import com.kenjiarai.languages.services.LanguageService;

@Controller
public class LanguageController {
	
	@Autowired
	private LanguageService service;
	
	// CREATE
	@PostMapping("/languages")
	public String add(
			@Valid @ModelAttribute("language") Language language, BindingResult result) {
		if (result.hasErrors()) return "/languages/languages.jsp"; // not sure why chart doesn't load 

			this.service.create(language);
			return "redirect:/languages";	
	}

	// READ ALL
	@GetMapping("/languages")
	public String readAll(@ModelAttribute("language") Language language, Model model) {
		
		model.addAttribute("languages", this.service.all());
		
		return "/languages/languages.jsp";
	}
	
	// READ ONE "/languages/{id}"
	@GetMapping("/languages/{id}")
	public String showOne(@PathVariable Long id, Model model) {
		model.addAttribute("language", this.service.retrieve(id));
		return "/languages/viewLanguage.jsp";
	}
	
	// UPDATE PUT "/languages/{id}/edit"
	@GetMapping("/languages/{id}/edit")
	public String getUpdateForm(@PathVariable Long id, Model model) {
		model.addAttribute("language", this.service.retrieve(id));
		return "/languages/editLanguage.jsp";
	}
	
	@PutMapping("/languages/{id}")
	public String update(
			@Valid @ModelAttribute("language") Language language,
			BindingResult result) {
		
		if (result.hasErrors()) return "/languages/editLanguage.jsp";
		
		this.service.create(language);
		return "redirect:/languages";
	}
	
	// DELETE "/languages/{id}"
	@DeleteMapping("/languages/{id}")
	public String delete(@PathVariable Long id) {
		this.service.delete(id);
		return "redirect:/languages";
	}
	
	
}
