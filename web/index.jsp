<%-- 
    Document   : index
    Created on : Apr 26, 2021, 8:48:20 PM
    Author     : jatin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.java.ConPool.DBUtils" %>
<%@include file="include/header.jsp"%>
<%
    Connection con = DBUtils.connect();

    Statement st = con.createStatement();
    //send and execute sql query

    String sql_query = "SELECT * FROM employees";
    boolean flag = false;
    ResultSet rs = st.executeQuery(sql_query);
    out.print("ENO\tENAME\tESAL\tEADDR");
    out.print("......................................");
    //process result from resultset
    while (rs.next()) {
        flag = true;%>
<h3>
    <%			out.println(rs.getInt(1) + "\t" + rs.getString(2) + "\t" + rs.getDouble(3) + "\t" + rs.getString(4));
    %>
</h3>
<%}
    if (flag == false) {
        out.print("No Records are available,Thank you.");
    }
%>



<%@include file="include/footer.jsp"%>