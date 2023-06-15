/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import sample.dto.BlogDTO;
import sample.utils.Utils;

/**
 *
 * @author MSI AD
 */
public class BlogDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<BlogDTO> getListBlog() {
        List<BlogDTO> list = new ArrayList<>();
        try {
            String query = "SELECT blog_id, title,detail,date_post,image,status,user_name,author,c.categories_blog_name FROM tbl_Blog x, tbl_Category_Blog c WHERE x.categories_blog_id = c.categories_blog_id";
            conn = new Utils().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                BlogDTO b = new BlogDTO(
                        rs.getString(1),
                        rs.getNString(2),
                        rs.getNString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getBoolean(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
                list.add(b);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void setStatusByBlogID(String blog_id, int status) {
        String query = "UPDATE tbl_Blog SET status = ? WHERE blog_id = ?";
        try {
            conn = new Utils().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, status);
            ps.setString(2, blog_id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        BlogDAO dao = new BlogDAO();
        List<BlogDTO> list = dao.getListBlog();
//        for (BlogDTO blogDTO : list) {
//            System.out.println(blogDTO);
//        }

        dao.setStatusByBlogID("BL1", 0);
    }
}
