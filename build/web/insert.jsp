<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>

<html>
    <jsp:include page="header.jsp" />
    <body>
        <jsp:include page="navbar.jsp"/>
        <jsp:useBean id="mydb" class="com.db.DBConnect"/>
        <hr> <br>
        <div class="container col-md-4">
            <h3>Insert Record</h3>
            <form>
              <div class="form-group">
                <label for="id">ID:</label>
                <input type="text" class="form-control" id="id" name="id" placeholder="Enter ID">
              </div>
              <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name">
              </div>
              <div class="form-group">
                <label for="age">Age:</label>
                <input type="number" class="form-control" id="age" name="age" placeholder="Enter Age">
              </div>
              <div class="form-group">
                <label for="address">Address:</label>
                <textarea class="form-control" id="address" name="address" rows="3" placeholder="Enter Address"></textarea>
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            <%
                Connection con = null;
                Statement st;
                ResultSet rs;
                try{
                    con = mydb.getConnect();
                    // out.println("connected...");
                    st = con.createStatement();
                    int id=Integer.parseInt(request.getParameter("id"));
                    String name=request.getParameter("name");
                    int age=Integer.parseInt(request.getParameter("age"));
                    String address=request.getParameter("address");
                    String sql = "insert into record values("+id+",'"+name+"',"+age+",'"+address+"')";
                    int ans = st.executeUpdate(sql);
                    if(ans!=0){
                        out.println("Record inserted...");
                    } else {
                        out.println("Failed !!");
                    }
                    con.close();
                } catch(Exception e) {
                    // out.println(e.toString());
                }
            %>
            </form>
        </div>
    </body>
</html>