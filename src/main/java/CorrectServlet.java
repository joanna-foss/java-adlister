import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="CorrectServlet", urlPatterns = "/correct")

public class CorrectServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res){

    }
}
