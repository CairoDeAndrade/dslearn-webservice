package com.devsuperior.dslearnbds.controllers.exceptions;

import java.util.ArrayList;
import java.util.List;

public class ValidationError extends StandardError{
	
	private static final long serialVersionUID = 1L;
	
	private List<FieldMessages> errors = new ArrayList<>();

	public List<FieldMessages> getErrors() {
		return errors;
	}
	
	public void addError(String name, String message) {	
		errors.add(new FieldMessages(name, message));
	}
}
