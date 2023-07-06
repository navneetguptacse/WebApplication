<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>

<html>
    <jsp:include page="header.jsp" />
    <body>
        <jsp:include page="navbar.jsp"/>
        <jsp:useBean id="mydb" class="com.db.DBConnect"/>
        <hr> <br>
        <div class="container col-md-4">
            <h3>Delete Record</h3>
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
                try{
                    con = mydb.getConnect();
                    //out.println("connected...");
                    st = con.createStatement();
                    int id=Integer.parseInt(request.getParameter("id"));
                    String sql="Delete from record where id="+id+"";
                    int ans = st.executeUpdate(sql);
                    if(ans!=0){
                        out.println("Record deleted...");
                    } else {
                        out.println("Sorry, No such record exist!!");
                    }
                    con.close();
                } catch(Exception e) {
                    //out.println(e.toString());
                }
            %>
            </form>
        </div>
    </body>
</html>