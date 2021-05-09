/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.controller;


import com.mvc.beans.UserBean;
import com.mvc.dao.RegisterDao;
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
 * @author jatin jatin vishwakarma jatin@gmail.com jatin2030
 */
@WebServlet(name = "RegisterController", urlPatterns = {"/Register"})
public class RegisterController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

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
        String fullName = request.getParameter("Rfullname");
        String email = request.getParameter("Remail");
        String password = request.getParameter("Rpassword");
//        
//        System.out.println(fullName);
//        System.out.println(email);
//        System.out.println(password);

        UserBean user = new UserBean();
        //Using Java Beans - An easiest way to play with group of related data
        user.setFullName(fullName);
        user.setEmail(email);
        user.setPassword(password);

        RegisterDao registerDao = new RegisterDao();

        //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
        String userRegistered = registerDao.registerUser(user);
        HttpSession session = request.getSession();
        if (userRegistered.equals("SUCCESS")) //On success, you can display a message to user on Home page
        {
           

            session.setAttribute("uname", user.getFullName());
            session.setAttribute("userid", user.getUserid());
            System.out.println(user.getUserid());
            session.setAttribute("msg", "Registration Successfully");

            request.getRequestDispatcher("/about.jsp").forward(request, response);
        } else //On Failure, display a meaningful message to the User.
        {
            request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("/index.jsp").forward(request, response);
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
