import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CountPageViews", urlPatterns = "/count")
public class CountPageViews extends HttpServlet {

    private Integer counter = 0;

    protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String searchQuery = req.getParameter("q");
        counter++;
        if (searchQuery != null) {
            counter = 1;
        }
        res.getWriter().write("total page views: " + counter);
    }
}
