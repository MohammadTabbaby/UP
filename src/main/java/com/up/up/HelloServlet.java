package com.up.up;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;


@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String nom = "tababi";
        String prenom = "mohamed";
        String[] students = {"mohamed", "ali", "sami"};
        request.setAttribute("prenom", prenom);
        request.setAttribute("nom", nom);
        request.setAttribute("students", students);
        this.getServletContext().getRequestDispatcher("/hello.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String pNom = req.getParameter("pNom");
        HttpSession session = req.getSession();
        session.setAttribute("pNom", pNom);
        this.getServletContext().getRequestDispatcher("/hello.jsp").forward(req, resp);

    }
}