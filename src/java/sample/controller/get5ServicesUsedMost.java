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
public class get5ServicesUsedMost extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServiceDAO dao = new ServiceDAO();
        List<String> labelList = dao.getTop5Services(); // Thay YourService bằng lớp hoặc phương thức thực tế để lấy danh sách tên
        List<Integer> dataList = dao.getTop5ServicesCount();
        // Tạo một đối tượng JSON để chứa danh sách tên
        JsonObject jsonObject = new JsonObject();
        JsonArray jsonArray = new JsonArray();
        JsonArray dataArray = new JsonArray();

        for (Integer data : dataList) {
            dataArray.add(data);
        }

        for (String label : labelList) {
            jsonArray.add(label);
        }

        jsonObject.add("labels", jsonArray);
        jsonObject.add("datas", dataArray);
        // Thiết lập các thông số cho response
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // Ghi dữ liệu JSON vào response
        PrintWriter out = response.getWriter();
        out.print(jsonObject.toString());
        out.flush();
    }

}
