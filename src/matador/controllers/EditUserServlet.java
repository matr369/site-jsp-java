package matador.controllers;

import matador.persistence.model.User;
import matador.services.UserServices;

import javax.management.InstanceAlreadyExistsException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

/**
 * Created by matr on 14.03.14.
 */
@WebServlet("/edit")
public class EditUserServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserServices userServices = new UserServices();
        String email = req.getParameter("email");
        try{
            userServices.readBase();
        }
        catch(InstanceAlreadyExistsException e){
        }
        User user = userServices.getByEmail(email);
        if(user != null){
            if(userServices.getByEmail(user.getEmail()) != null)
            {
                req.setAttribute("user", user);
                RequestDispatcher dispatch = req.getRequestDispatcher("/WEB-INF/createuser.jsp");
                dispatch.forward(req, resp);
            }
        }
        else{
            RequestDispatcher dispatch = req.getRequestDispatcher("/index.jsp");
            dispatch.forward(req, resp);
        }
    }
}
