package com.springmvc.services;

import java.util.List;

import com.springmvc.model.Profesor;

public interface ProfesorService {

	public List<Profesor> getProfesores();
	public Profesor getById(int id);
}
