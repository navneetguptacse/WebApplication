<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>

<html>
    <jsp:include page="header.jsp" />
    <body>
        <jsp:include page="navbar.jsp"/>
        <jsp:useBean id="mydb" class="com.db.DBConnect"/>
        <hr> <br>
        <div class="container col-md-4">
            <h3>Search Record</h3>
            <form>
              <div class="form-group">
                <label for="id">ID:</label>
                <input type="text" class="form-control" id="id" name="id" placeholder="Enter ID">
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
              <%
                Connection con = null;
                Statement st;
                ResultSet rs;
                try {
                    con = mydb.getConnect();
                    //out.println("connected...");
                    st = con.createStatement();
                    int id=Integer.parseInt(request.getParameter("id"));
                    String sql = "select *from record where id="+id+"";
                    rs = st.executeQuery(sql);
                    if(rs.next()) {
                        out.println("<br><br>Your searched record...");
                    %>

                    <table class="table table-striped">
                        <thead>
                            <tr>
                              <th scope="col" colspan="4">Student Record</th>
                            </tr>
                            <tr>
                              <th scope="col">ID</th>
                              <th scope="col">Name</th>
                              <th scope="col">Age</th>
                              <th scope="col">Address</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><%=rs.getInt(1)%></td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getInt(3)%></td>
                                <td><%=rs.getString(4)%></td>
                            </tr>
                        </tbody>
                    </table>
                    <%
                    } else {
                        out.println("<br> <br> Error: No such record exist !! <br> Please, Enter valid 'id'...");
                    }
                    con.close();
                } catch (Exception e) {
                    //out.print(e.toString());
                }
            %>
            </form>
        </div>
    </body>
</html>