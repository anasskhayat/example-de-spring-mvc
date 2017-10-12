package com.springmvc.data;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.springmvc.model.Profesor;

@Repository
public class ProfesorRepo {
	private Map<Integer, Profesor> prof;

	public ProfesorRepo() {
		prof = new HashMap<Integer, Profesor>();

		prof.put(1, new Profesor(1, "juan", "hard", "aaaaa@gmail.com"));
		prof.put(2, new Profesor(2, "jaun", "hard", "aaaaa@gmail.com"));
		prof.put(3, new Profesor(3, "diego", "soft", "aaaaa@gmail.com"));
	}
	public List<Profesor> findAllProfesor(){
		return new LinkedList<Profesor>(prof.values());
		
	}
	public Profesor findProfesor(int id) {
		if(prof.containsKey(id))
			return prof.get(id);
		return null;
	}

}
