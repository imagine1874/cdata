package com.liuyang.main;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/liuyang")
public class TestServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
//        super.doGet(req, resp);
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        try {
            String queryString = req.getQueryString();
            Map<String, String> paramsMap1 = HttpStringUtils.parseQueryToMap(null);
            Map<String, String> paramsMap = HttpStringUtils.parseQueryToMap(queryString);

            pw.write("<h1> hello first servlet!</h1>");
        } catch (Exception exception) {
            pw.println("{code: 500, message:系统维护中}");
        }



    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
//        super.doPost(req, resp);

        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        pw.write("<h1> this is post</h1>");
    }
}
