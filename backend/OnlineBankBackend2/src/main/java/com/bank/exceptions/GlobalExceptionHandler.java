package com.bank.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class GlobalExceptionHandler {

    // Handle UserDoesNotExistsException
    @ExceptionHandler(UserDoesNotExistsException.class)
    public ResponseEntity<ExceptionResponse> handleUserDoesNotExist(UserDoesNotExistsException ex) {
        ExceptionResponse exceptionResponse = new ExceptionResponse(
                ex.getMessage(),
                System.currentTimeMillis(),
                HttpStatus.NOT_FOUND.value()
        );
        return new ResponseEntity<>(exceptionResponse, HttpStatus.NOT_FOUND);
    }

    // Handle AccountDoesNotExistsException
    @ExceptionHandler(AccountDoesNotExistsException.class)
    public ResponseEntity<ExceptionResponse> handleAccountDoesNotExist(AccountDoesNotExistsException ex) {
        ExceptionResponse exceptionResponse = new ExceptionResponse(
                ex.getMessage(),
                System.currentTimeMillis(),
                HttpStatus.NOT_FOUND.value()
        );
        return new ResponseEntity<>(exceptionResponse, HttpStatus.NOT_FOUND);
    }

    // Generic Exception Handler
    @ExceptionHandler(Exception.class)
    public ResponseEntity<ExceptionResponse> handleGlobalException(Exception ex) {
        ExceptionResponse exceptionResponse = new ExceptionResponse(
                "An unexpected error occurred: " + ex.getMessage(),
                System.currentTimeMillis(),
                HttpStatus.INTERNAL_SERVER_ERROR.value()
        );
        return new ResponseEntity<>(exceptionResponse, HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
