<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>

<html>
    <jsp:include page="header.jsp"/>
    <body>
        <jsp:include page="navbar.jsp"/>
        <jsp:useBean id="mydb" class="com.db.DBConnect"/>
        <%
            Connection con = null;
            Statement st;
            ResultSet rs;
            try {
                con = mydb.getConnect();
                //out.println("connected...");
                st = con.createStatement();
                String sql = "select *from record";
                rs = st.executeQuery(sql);
                %>
                <br> <br>
                <table class="table table-striped col-md-6" align="center">
                    <thead>
                        <tr class="bg-primary">
                            <th colspan="4" style="text-align: center; color:white">
                                All Database Records (Updated)
                            </th>
                        </tr>
                        <tr>
                          <th scope="col">ID</th>
                          <th scope="col">Name</th>
                          <th scope="col">Age</th>
                          <th scope="col">Address</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                    while(rs.next()) {
                    %>
                        <tr>
                            <td><%=rs.getInt(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getInt(3)%></td>
                            <td><%=rs.getString(4)%></td>
                        </tr>
                    <%
                    }
                    %> 
                    </tbody>
            <%
            } catch (Exception e) {
                //out.print(e.toString());
            }
            %>
                </table>
    </body>
</html>
