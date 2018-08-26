package com.gemini.Advice;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class MyadviceController {

	
	 @ExceptionHandler(value = NullPointerException.class)
	  public String handleNullPointerException(Exception e) {
		
		  System.out.println("Null pointer exception occured");
		  return "nullPointer";
	}
	 
	 @ExceptionHandler(value= RuntimeException.class)
     public String handleRuntimException(Exception e){
		  System.out.println("Runtime exception occured");

		return "RuntimeException";
		 
	 }



}
