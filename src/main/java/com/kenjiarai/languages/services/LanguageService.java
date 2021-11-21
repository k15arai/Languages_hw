package com.kenjiarai.languages.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kenjiarai.languages.models.Language;
import com.kenjiarai.languages.repositories.LanguageRepository;

@Service
public class LanguageService {
	@Autowired
	private LanguageRepository repository;
	
	// Create
	public Language create(Language item) {
		return this.repository.save(item);
	}
	
	// Read ALL
	public List<Language> all() {
		return this.repository.findAll();
	}
	
	// Read ONE
	public Language retrieve(Long id) {
		return this.repository.findById(id).get();
	}
	
	// Update
	public Language update(Language item) {
		return this.repository.save(item);
	}
	
	// Delete
	public void delete(Long id) {
		this.repository.deleteById(id);
	}
}
