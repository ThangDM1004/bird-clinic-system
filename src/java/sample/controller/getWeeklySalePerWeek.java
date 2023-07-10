/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.dao.ServiceDAO;

/**
 *
 * @author Minh
 */
public class getWeeklySalePerWeek extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServiceDAO dao = new ServiceDAO();
        List<Integer> dataList = dao.getTotalFeePerWeek();

        JsonObject jsonObject = new JsonObject();
        JsonArray dataArray = new JsonArray();

        for (Integer data : dataList) {
            dataArray.add(data);
        }

        jsonObject.add("datass", dataArray);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // Ghi dữ liệu JSON vào response
        PrintWriter out = response.getWriter();
        out.print(jsonObject.toString());
        out.flush();
    }

}
