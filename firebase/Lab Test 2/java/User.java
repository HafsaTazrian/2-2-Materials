package com.example.lab_test2;

public class User {
    public String name , pass , dob , email ;

    public User(){

    }
    public User(String name, String email, String dob, String pass) {
        this.name = name;
        this.pass = pass;
        this.dob = dob;
        this.email = email;
    }


    public String getName() {
        return name;
    }

    public String getPass() {
        return pass;
    }

    public String getDob() {
        return dob;
    }

    public String getEmail() {
        return email;
    }
}
