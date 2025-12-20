package ViewProfilesServlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;
import controller.ProfileServlet;

public class ViewProfilesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<String[]> profiles = ProfileServlet.getProfiles();

        request.setAttribute("profiles", profiles);
        RequestDispatcher rd = request.getRequestDispatcher("allProfiles.jsp");
        rd.forward(request, response);
    }
}
