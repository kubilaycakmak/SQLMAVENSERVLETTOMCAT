package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

@WebServlet(name = "userInformationServlet")
public class userInformationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/users", "root", "");
            PreparedStatement ps = connection.prepareStatement(
                    "Select *from users where username = ? and password = ?"
            );
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String userName = rs.getString("username");
                String pwd = rs.getString("password");
                rs.beforeFirst();
                System.out.println(userName);
                System.out.println(pwd);
                request.getRequestDispatcher("userpanel.jsp").forward(request, response);
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e2) {
        }
    }
        protected void doGet (HttpServletRequest request, HttpServletResponse response) throws
        ServletException, IOException {

        }
    }