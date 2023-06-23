<%@ page import="com.spring.model.*" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <title>Profile page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        h1 {
            margin-bottom: 20px;
        }

        .edit-input {
            width: 100%;
            padding: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <form action="update" method="post">
            <h1>Edit page</h1>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Field</th>
                        <th>Value</th>
                    </tr>
                </thead>
                <tbody>
                    <% ArrayList<ProfileModel> profiles = (ArrayList<ProfileModel>) request.getAttribute("profiles"); %>
                    <% if (profiles != null) { %>
                        <% for (ProfileModel pf : profiles) { %>
                            <tr>
                                <td>ID:</td>
                                <td><span><%= pf.getUserid() %></span></td>
                            </tr>
                            <tr>
                                <td>Name:</td>
                                <td><%= pf.getUsername() %></td>
                            </tr>
                            <tr>
                                <td>Password:</td>
                                <td>
                                    <div class="input-group">
                                        <input type="password" name="password" id="password" value="<%= pf.getPassword() %>" class="edit-input form-control">
                                        <div class="input-group-append">
                                            <div class="input-group-text">
                                                <input type="checkbox" id="togglePassword">
                                                <label class="form-check-label" for="togglePassword">Show Password</label>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Emp ID:</td>
                                <td><%= pf.getEmpid() %></td>
                            </tr>
                            <tr>
                                <td>User Role:</td>
                                <td><%= pf.getUser_role() %></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="hidden" name="id" value="<%= pf.getUserid() %>">
                                    <input type="submit" value="Update" class="btn btn-primary">
                                </td>
                            </tr>
                        <% } %>
                    <% } %>
                </tbody>
            </table>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        const passwordField = document.getElementById('password');
        const togglePassword = document.getElementById('togglePassword');

        togglePassword.addEventListener('change', function() {
            passwordField.type = togglePassword.checked ? 'text' : 'password';
        });
    </script>
</body>
</html>
