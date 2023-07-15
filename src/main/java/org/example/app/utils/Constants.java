package org.example.app.utils;

import org.example.app.credentials.Credentials;

public final class Constants {

    // DB
    public final static String DB_URL = "jdbc:mysql://localhost:3306/employee_store_db?";
    public final static String DB_USER = "dev";
    public final static String DB_PASS = Credentials.DB_PASS;
    public final static String PHONE_RGX = "[0-9]{3}[\\ ][0-9]{3}-[0-9]{4}";

}
