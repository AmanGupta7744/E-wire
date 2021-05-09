/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.dao;

import com.java.ConPool.DBUtils;
import com.mvc.beans.UserBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jatin
 */
public class LoginDao {

    public String authorizedLogin(UserBean user) {
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        String email = user.getEmail();
        String password = user.getPassword();
        con = DBUtils.connect();//getting connection 
        String query = "select * from users where email=? and password=?";

        try {
            pst = con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            rs = pst.executeQuery();

            if (rs.next()) {
                user.setUserid(rs.getInt(1));
                user.setFullName(rs.getString(2));
                return "SUCCESS LOGIN";
            }

        } catch (SQLException ex) {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return "WRONG USERNAME AND PASSWORD";
    }

}
