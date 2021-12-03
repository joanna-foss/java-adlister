import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession current = request.getSession();
        if(!(boolean) current.getAttribute("user")) {
            response.sendRedirect("/WEB-INF/login.jsp");
        } else if ((boolean) current.getAttribute("user")) {
            request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
        }
    }
}
