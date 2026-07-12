<%@ page import="java.io.File" %>
<%
    String username = (String) session.getAttribute("username");
    if(username == null){
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
<title>Cloud File Storage Dashboard</title>
<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial,sans-serif;
}

body{
    background:linear-gradient(135deg,#a8edea,#7ed6df,#63cdda);
    min-height:100vh;
}

.header{
    text-align:center;
    padding:40px 20px;
}

.header h1{
    font-size:42px;
    color:#1f3c88;
    margin-bottom:10px;
}

.header h2{
    font-size:24px;
    color:#163172;
    margin-bottom:10px;
}

.header p{
    color:#34495e;
    font-size:17px;
}

.container{
    width:90%;
    margin:auto;
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:25px;
    padding:30px;
}

.card{
    background:#ffffff;
    padding:35px 25px;
    border-radius:20px;
    text-align:center;
    box-shadow:0 10px 25px rgba(0,0,0,.15);
    transition:.3s;
}

.card:hover{
    transform:translateY(-10px);
    box-shadow:0 18px 35px rgba(0,0,0,.20);
}

.card h2{
    color:#1f3c88;
    margin-bottom:18px;
    font-size:24px;
}

.card h3{
    color:#20b2aa;
    font-size:38px;
    margin-bottom:20px;
}

.card button{
    width:170px;
    padding:12px;
    background:#1f3c88;
    color:white;
    border:none;
    border-radius:30px;
    cursor:pointer;
    font-size:16px;
    font-weight:bold;
    transition:.3s;
}

.card button:hover{
    background:#163172;
    transform:translateY(-3px);
}

</style>
</head>
<%
    if(session.getAttribute("loginSuccess") != null){
%>
<script>
    alert("Login Successful! Welcome <%= session.getAttribute("username") %>");
</script>
<%
        session.removeAttribute("loginSuccess");
    }
%>
<body>
<div class="header">
    <h1>Cloud File Storage System</h1>
    <h2>Welcome, <%= username %></h2>
    <p>Securely Upload, View, Download and Manage Your Files</p>
</div>
<div class="container">
    <div class="card">
        <h2>Upload File</h2>
        <button onclick="location.href='UploadFile.jsp'">
            Open
        </button>
    </div>
    <div class="card">
        <h2>View Files</h2>
        <button onclick="location.href='ViewFiles.jsp'">
            Open
        </button>
    </div>
    <div class="card">
        <h2>Total Files</h2>
        <%
            File folder = new File("C:/apache-tomcat-9.0.117/webapps/CloudFileStorage/uploads");
            int totalFiles = 0;
            if(folder.exists()){
                File[] files = folder.listFiles();
                if(files != null){
                    totalFiles = files.length;
                }
            }
        %>
        <h3><%= totalFiles %></h3>
    </div>
    <div class="card">
        <h2>Logout</h2>
        <button onclick="location.href='LogoutController'">
            Logout
        </button>
    </div>
</div>
</body>
</html>