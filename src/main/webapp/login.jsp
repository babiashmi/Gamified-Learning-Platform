<%

String errorMessage = "";

if ("POST".equalsIgnoreCase(request.getMethod())) {

    String name =
            request.getParameter("name");

    String email =
            request.getParameter("email");

    String password =
            request.getParameter("password");


    java.sql.Connection con = null;
    java.sql.PreparedStatement ps = null;
    java.sql.ResultSet rs = null;


    try {

        con =
            com.learnplay.DBConnection.getConnection();


        /*
         * Check whether email already exists
         */

        String checkSql =
            "SELECT id, name, password "
            + "FROM users "
            + "WHERE email = ?";


        ps =
            con.prepareStatement(checkSql);


        ps.setString(1, email);


        rs =
            ps.executeQuery();


        if (rs.next()) {

            /*
             * Existing user
             */

            String dbPassword =
                rs.getString("password");


            if (dbPassword.equals(password)) {

                session.setAttribute(
                    "userName",
                    rs.getString("name")
                );

                session.setAttribute(
                    "userEmail",
                    email
                );


                response.sendRedirect(
                    "course.jsp"
                );

                return;


            } else {

                errorMessage =
                    "Incorrect password.";

            }


        } else {

            /*
             * New user
             */

            rs.close();
            ps.close();


            String insertSql =
                "INSERT INTO users "
                + "(name, email, password) "
                + "VALUES (?, ?, ?)";


            ps =
                con.prepareStatement(insertSql);


            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);


            ps.executeUpdate();


            session.setAttribute(
                "userName",
                name
            );

            session.setAttribute(
                "userEmail",
                email
            );


            response.sendRedirect(
                "course.jsp"
            );

            return;
        }


    } catch (Exception e) {

        errorMessage =
            "Database Error: "
            + e.getMessage();


    } finally {

        try {

            if (rs != null) {
                rs.close();
            }

        } catch (Exception e) {
        }


        try {

            if (ps != null) {
                ps.close();
            }

        } catch (Exception e) {
        }


        try {

            if (con != null) {
                con.close();
            }

        } catch (Exception e) {
        }
    }
}

%>


<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <title>LearnPlay - Login</title>

    <link
        rel="stylesheet"
        href="css/style.css"
    >

</head>

<body>

<div class="box login-box">

    <h1>LearnPlay</h1>

    <p>
        Learn | Practice | Improve
    </p>


    <%

    if (!errorMessage.isEmpty()) {

    %>

        <p class="error">
            <%= errorMessage %>
        </p>

    <%

    }

    %>


    <form
        action="login.jsp"
        method="post"
    >

        <input
            type="text"
            name="name"
            placeholder="Enter your name"
            required
        >


        <input
            type="email"
            name="email"
            placeholder="Enter your email"
            required
        >


        <input
            type="password"
            name="password"
            placeholder="Enter your password"
            required
        >


        <button type="submit">
            Login
        </button>

    </form>

</div>

</body>

</html>