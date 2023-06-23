<%@ page import="com.spring.model.*" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <title>Profile page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        h1 {
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .edit-input {
            width: 100%;
            padding: 5px;
        }

        input[type="submit"] {
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form action="update" method="post">
        <h1>Edit page</h1>
        <table>
            <tr>
                <th>Field</th>
                <th>Value</th>
            </tr>
          
        <% ArrayList<ProfileModel> profiles = (ArrayList<ProfileModel>) request.getAttribute("profiles"); %>
        <% if (profiles != null) { %>
            <% for (ProfileModel pf : profiles) { %>
                <tr>
                    <td>ID:</td>
                   <%--  <td><input type="number" name="id" value="<%= pf.getUserid() %>" class="edit-input" readonly></td> --%>
                     <%-- <td id="userId_<%= pf.getUserid() %>" name ="id"><%= pf.getUserid() %></td>
                </tr> --%>
                 <tr>
            <td>ID:</td>
            <td><span><%= pf.getUserid() %></span></td>
        </tr>
        <tr>
            <td>Form Field:</td>
            <td>
                <input type="hidden" name="id" value="<%= pf.getUserid() %>">
            </td>
        </tr>
                <tr>
                    <td>Name:</td>
                    <td><%= pf.getUsername() %></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" id="password" value="<%= pf.getPassword() %>" class="edit-input"></td>
                </tr>
                <tr>
                    <td>Emp ID:</td>
                    <td><%= pf.getEmpid() %></td>
                </tr>
                <tr>
                    <td>User Role:</td>
                    <td><%= pf.getUser_role() %></td>
                </tr>
            <% } %>
        <% } %>

        </table>
      
        <input type="submit" value="Update">
    </form>
</body>
</html>
