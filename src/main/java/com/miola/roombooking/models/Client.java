package com.miola.roombooking.models;

public class Client {
    private int clientId;
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private String email;
    private String password;

    public Client() {
    }

    public Client(int clientId, String firstName, String lastName, String phoneNumber, String email, String password) {
        this.clientId = clientId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.password = password;
    }
    public int getClientId() {
        return clientId;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }


    public String getPhoneNumber() {
        return phoneNumber;
    }
}
