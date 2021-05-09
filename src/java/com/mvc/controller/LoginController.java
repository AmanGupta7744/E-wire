/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.controller;

import com.mvc.beans.UserBean;
import com.mvc.dao.LoginDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jatin
 */
@WebServlet(name = "LoginController", urlPatterns = {"/Login"})
public class LoginController extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Copying all the input parameters in to local variables 
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        //storing local data into loginBean object
        UserBean user = new UserBean();
        //the class encapsulate the data of login form 
        user.setEmail(email);
        user.setPassword(password);

        LoginDao dao = new LoginDao();
        String authorize = dao.authorizedLogin(user);

        HttpSession session = request.getSession();

        if (authorize.equals("SUCCESS LOGIN")) //On success, you can display a message to user on Home page
        {

            session.setAttribute("uname", user.getFullName());
            session.setAttribute("userid", user.getUserid());
            session.setAttribute("msg", "Login Successfull");
            
            System.out.println(user.getFullName());
            System.out.println(user.getUserid());

             session.setAttribute("message", "Registration Successfull!");

            response.sendRedirect("index.jsp");
        } else //On Failure, display a meaningful message to the User.
        {
            request.setAttribute("errMessage", authorize);
            response.sendRedirect("index.jsp");
        }
    }
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
