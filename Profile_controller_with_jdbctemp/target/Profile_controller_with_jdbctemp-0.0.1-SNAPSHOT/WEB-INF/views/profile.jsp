<%@ page import="com.spring.model.*" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <title>Profile Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        
        h1 {
            color: #333;
            text-align: center;
            margin-top: 20px;
        }
        
        table {
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            border-collapse: collapse;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
        
        th, td {
            padding: 15px;
            border-bottom: 1px solid #ccc;
        }
        
        th {
            background-color: #333;
            color: #fff;
            text-align: left;
        }
        
        tr:hover {
            background-color: #f9f9f9;
        }
        
        form {
            text-align: center;
            margin-top: 20px;
        }
        
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #333;
            color: #fff;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }
        
        input[type="submit"]:hover {
            background-color: #555;
        }
        
        .disabled {
            background-color: transparent;
            border: none;
            cursor: not-allowed;
        }
    </style>
</head>
<body>
    <h1>Profile Details</h1>
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
                <td><%= pf.getUserid() %></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><%= pf.getUsername() %></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" id="passwordField" value="<%= pf.getPassword() %>" readonly class="disabled">
                <input type="checkbox" id="togglePassword"> Show Password</td>
                
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
    <form action="edit" method="post">
        <input type="submit" value="Edit">
    </form>
    <script>
    const passwordField = document.getElementById('passwordField');
    const togglePassword = document.getElementById('togglePassword');

    togglePassword.addEventListener('change', function() {
      if (togglePassword.checked) {
        passwordField.type = 'text';
      } else {
        passwordField.type = 'password';
      }
    });

    
    </script>
</body>
</html>
