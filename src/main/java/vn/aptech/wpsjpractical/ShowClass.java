/*
 * Copyright 2021 by AnhNBT
 */
package vn.aptech.wpsjpractical;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author Nguyen Ba Tuan Anh <anhnbt.it@gmail.com>
 */
public class ShowClass extends SimpleTagSupport {

    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        Connection conn = null;
        Statement statement = null;
        ResultSet rs = null;
        try {
            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }
            conn = DBConnection.getConnection();
            statement = conn.createStatement();
            String query = "SELECT * FROM registertbl ORDER BY id DESC";
            rs = statement.executeQuery(query);
            StringBuilder table = new StringBuilder("<table border=\"1\">");
            table.append("<thead>");
            table.append("<tr>");
            table.append("<th>Username</th>");
            table.append("<th>Fullname</th>");
            table.append("<th>Email</th>");
            table.append("<th>Phone</th>");
            table.append("</tr>");
            table.append("</thead>");
            while (rs.next()) {
                table.append("<tr>");
                table.append("<td>").append(rs.getString("username")).append("</td>");
                table.append("<td>").append(rs.getString("fullname")).append("</td>");
                table.append("<td>").append(rs.getString("email")).append("</td>");
                table.append("<td>").append(rs.getString("telephone")).append("</td>");
                table.append("</tr>");
            }
            table.append("</table>");
            out.println(table);

        } catch (java.io.IOException ex) {
            throw new JspException("Error in ShowClass tag", ex);
        } catch (SQLException ex) {
            Logger.getLogger(ShowClass.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(ShowClass.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

}
