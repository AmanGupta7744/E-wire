/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.dao;

import com.java.ConPool.DBUtils;
import com.mvc.beans.RegisterBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jatin
 */
public class RegisterDao {

    Connection con;
    PreparedStatement pst;

    public String registerUser(RegisterBean user) {
        int i = 0;
        String fullName = user.getFullName();
        String email = user.getEmail();
        String password = user.getPassword();
        con = DBUtils.connect();
        String query = "insert into users(fullName,Email,Password) values (?,?,?)";
        try {
            //Insert user details into the table 'USERS'
            pst = con.prepareStatement(query);
            pst.setString(1, fullName);
            pst.setString(2, email);
            pst.setString(3, password);
            i = pst.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(RegisterDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (i != 0) //Just to ensure data has been inserted into the database
        {
            return "SUCCESS";
        }
        return "Oops.. Something went wrong there..!";
    }

}
