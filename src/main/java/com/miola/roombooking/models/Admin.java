package com.miola.roombooking.models;

public class Admin {
    private int adminId;
    private String firstName;
    private String lastName;
    private String email;
    private String password;

    public Admin() {
    }

    public Admin(int adminId, String firstName, String lastName, String email, String password) {
        this.adminId = adminId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
    }
    public int getAdminId() {
        return adminId;
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

}
