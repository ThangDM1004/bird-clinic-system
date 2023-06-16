/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.dao;

import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import sample.dto.SlotDTO;
import sample.utils.Utils;

/**
 *
 * @author MSI AD
 */
public class BookingDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<String> getWeekDates() {
        List<String> weekDates = new ArrayList<>();

        Calendar calendar = Calendar.getInstance();
        Date currentDate = calendar.getTime();

        // Thiết lập ngày đầu tuần là thứ 2
        calendar.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);

        // Lấy thứ ngày trong tuần cho 7 ngày
        for (int i = 0; i < 7; i++) {
            Date date = calendar.getTime();

            // Định dạng ngày tháng
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
            String formattedDate = dateFormat.format(date);

            // Thêm ngày vào danh sách
            weekDates.add(formattedDate);

            // Tăng ngày lên 1
            calendar.add(Calendar.DAY_OF_WEEK, 1);
        }

        return weekDates;
    }

    public static List<String> getNextWeek() {
        List<String> weekDates = new ArrayList<>();

        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.WEEK_OF_YEAR, 1); // Tăng số tuần lên 1 để lấy tuần tiếp theo
        calendar.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY); // Thiết lập ngày đầu tuần là thứ 2

        // Lấy thứ ngày trong tuần cho 7 ngày
        for (int i = 0; i < 7; i++) {
            Date date = calendar.getTime();

            // Định dạng ngày tháng
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
            String formattedDate = dateFormat.format(date);

            // Thêm ngày vào danh sách
            weekDates.add(formattedDate);

            // Tăng ngày lên 1
            calendar.add(Calendar.DAY_OF_WEEK, 1);
        }

        return weekDates;
    }

    public int compareDate(String date1, String date2) {
        int year1 = Integer.parseInt(date1.substring(0, 4));
        int month1 = Integer.parseInt(date1.substring(5, 7));
        int day1 = Integer.parseInt(date1.substring(8, 10));

        int year2 = Integer.parseInt(date2.substring(0, 4));
        int month2 = Integer.parseInt(date2.substring(5, 7));
        int day2 = Integer.parseInt(date2.substring(8, 10));

        if (year1 > year2) {
            return 1;
        } else if (year1 < year2) {
            return -1;
        } else {
            if (month1 > month2) {
                return 1;
            } else if (month1 < month2) {
                return -1;
            } else {
                if (day1 > day2) {
                    return 1;
                } else if (day1 < day2) {
                    return -1;
                } else {
                    return 0;
                }
            }
        }
    }

    public List<SlotDTO> getSlot() {
        List<SlotDTO> list = new ArrayList<>();
        try {
            conn = Utils.getConnection();
            ps = conn.prepareStatement("select *\n"
                    + "from tbl_Slot");
            rs = ps.executeQuery();
            while (rs.next()) {
                SlotDTO s = new SlotDTO(rs.getInt(1), rs.getString(2));
                list.add(s);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public String getToday() {
        // Lấy ngày hiện tại
        Date currentDate = new Date();

        // Định dạng ngày tháng
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");

        // Chuyển đổi ngày thành chuỗi theo định dạng
        String formattedDate = dateFormat.format(currentDate);

        // Trả về ngày đã định dạng
        return formattedDate;
    }

    public static void main(String[] args) {
        for (String string : getNextWeek()) {
            System.out.println(string);
        }
    }
}
