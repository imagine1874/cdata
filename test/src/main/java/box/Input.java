package box;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class Input extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        StringBuilder stringBuilder=new StringBuilder();
        stringBuilder.append("<form action='' method='post'>");
        stringBuilder.append("MC:<input type='text' name='LoginName' value=''/>");
        stringBuilder.append("MM:<input type='password' name='LoginPwd' value=''/>");
        stringBuilder.append("<input type='submit' name='submit' value='DL'/>");
        stringBuilder.append("<input type='reset' name='reset' value='QX'/>");
        showmsg(resp,stringBuilder.toString());
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        String LoginName=req.getParameter("LoginName");
        String LoginPwd=req.getParameter("LoginPwd");
        String msg="";
        msg=(("admin").equals(LoginName)&&("123456").equals(LoginPwd)?("HY"+LoginName):("YHMMMCW"));
        showmsg(resp,msg);
    }
    private void showmsg(HttpServletResponse resp,String msg){
        resp.setCharacterEncoding("utf-8");
        StringBuilder stringBuilder=new StringBuilder();
        stringBuilder.append("<html>");
        stringBuilder.append("<header>");
        stringBuilder.append("<title>Text</title>");
        stringBuilder.append("<meta charset='UTF-8'>");
        stringBuilder.append("</header>");
        stringBuilder.append("<body>");
        stringBuilder.append(msg);
        stringBuilder.append("</body>");
        stringBuilder.append("</html>");

        PrintWriter out = null;
        try {
            out = resp.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        out.println(stringBuilder.toString());
        out.close();
    }
}
