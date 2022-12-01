/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.loginDao;
import entity.Test;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.taglibs.standard.lang.jstl.Logger;
import java.util.logging.*;

/**
 *
 * @author Longvh
 */
@WebServlet(name = "LoginController", urlPatterns = {"/logincontroller"})
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("view/user/login.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = request.getParameter("inputEmail");
        String password = request.getParameter("inputPassword");

        loginDao dao = new loginDao();
        User a = dao.getUser(email, password);
//        Test test = new Test();
//        List<String>  aaa = new ArrayList<>();
//        aaa.add(email);
//        aaa.add(password);
//        test.tesOutut(request, response, aaa);
        if (a != null) {
            response.sendRedirect("homecontroller");
        } else {
            session.setAttribute("acc", email);
            response.sendRedirect("logincontroller");
        }

    }

}
