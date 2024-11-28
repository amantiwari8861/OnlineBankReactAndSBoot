package com.bank.model;

public class ApiResponse<T> {
    private int statusCode;
    private String message;
    private boolean success;
    private T data;

    public ApiResponse(int statusCode, String message, boolean success, T data) {
        this.statusCode = statusCode;
        this.message = message;
        this.success = success;
        this.data = data;
    }

    public int getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(int statusCode) {
        this.statusCode = statusCode;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "ApiResponse [statusCode=" + statusCode + ", message=" + message + ", success=" + success + ", data="
                + data + "]";
    }
}
