<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>

<html>
    <jsp:include page="header.jsp" />
    <body>
        <jsp:include page="navbar.jsp"/>
        <jsp:useBean id="mydb" class="com.db.DBConnect"/>
        
        <!-- Jumbotron -->
        <div class="jumbotron jumbotron-fluid">
          <div class="container">
            <h1 style="color: #34a6fc!important">Welcome! </h1>
          </div>
        </div>

        <!-- Features Section -->
        <section class="bg-light">
          <div class="container">
            <div class="row">
              <div class="col-md-4">
                <div class="feature-box">
                  <h3>Validation</h3>
                  <p>The application should incorporate robust data validation mechanisms to ensure the integrity and accuracy of the records.</p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="feature-box">
                  <h3>Audit</h3>
                  <p>Implementing an audit trail feature can be beneficial, allowing you to track and log changes made to the records.</p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="feature-box">
                  <h3>Search</h3>
                  <p>Implement a search and filter functionality that allows users to easily find specific records based on certain criteria</p>
                </div>
              </div>
            </div>
          </div>
        </section>

        <!-- Footer -->
        <footer class="bg-dark text-white text-center py-2">
          <p>&copy; 2023 The Centrabyte Inc. All rights reserved.</p>
        </footer>
    </body>
</html>