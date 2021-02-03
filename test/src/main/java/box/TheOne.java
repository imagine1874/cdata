package box;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/One")
public class TheOne extends One {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
        String ly = "hello world"+"\n"+"HELLO,WORLD";
        resp.setCharacterEncoding("utf-8");
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("<html>");
        stringBuilder.append("<header>");
        stringBuilder.append("<title>Text</title>");
        stringBuilder.append("meta charset='UTF-8'>");
        stringBuilder.append("</header>");
        stringBuilder.append("<body>");
        stringBuilder.append(ly);
        stringBuilder.append("</body>");
        stringBuilder.append("</html>");

        PrintWriter out = resp.getWriter();
        out.println(stringBuilder.toString());
        out.close();

    }
}
