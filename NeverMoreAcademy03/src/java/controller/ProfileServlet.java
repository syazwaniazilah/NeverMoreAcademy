package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;

public class ProfileServlet extends HttpServlet {

    private static final List<String[]> profiles = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String[] profile = {
            request.getParameter("name"),
            request.getParameter("studentId"),
            request.getParameter("program"),
            request.getParameter("email"),
            request.getParameter("hobbies"),
            request.getParameter("intro")
        };

        profiles.add(profile);

        request.setAttribute("name", profile[0]);
        request.setAttribute("studentId", profile[1]);
        request.setAttribute("program", profile[2]);
        request.setAttribute("email", profile[3]);
        request.setAttribute("hobbies", profile[4]);
        request.setAttribute("intro", profile[5]);

        RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
        rd.forward(request, response);
    }

    public static List<String[]> getProfiles() {
        return profiles;
    }
}
