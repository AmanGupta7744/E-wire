/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.ConPool;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 *
 * @author jatin
 */
public class DBUtils {

    static Connection con;

    public static Connection connect() {

        try {
            Context context = new InitialContext();
            DataSource ds = (DataSource) context.lookup("java:comp/env/e_wire");
            con = ds.getConnection();
        } catch (NamingException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return con;
    }

}
