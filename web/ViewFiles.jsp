<%@ page import="java.sql.*" %>
<%@ page import="com.cloudstorage.util.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Files</title>
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

        .container{
            width:85%;
            margin:40px auto;
            background:#ffffff;
            padding:30px;
            border-radius:20px;
            box-shadow:0 10px 25px rgba(0,0,0,.15);
            transition:.3s;
        }

        .container:hover{
            box-shadow:0 18px 35px rgba(0,0,0,.20);
        }

        h1{
            text-align:center;
            color:#1f3c88;
            margin-bottom:10px;
            font-size:34px;
        }

        h3{
            text-align:center;
            color:#34495e;
            margin-bottom:25px;
        }

        table{
            width:100%;
            border-collapse:collapse;
            margin-top:20px;
        }

        th,td{
            padding:14px;
            text-align:center;
            border-bottom:1px solid #e5e7eb;
        }

        th{
            background:#1f3c88;
            color:white;
        }

        tr:nth-child(even){
            background:#f8fbff;
        }

        tr:hover{
            background:#e6f7ff;
        }

        .downloadBtn{
            padding:10px 18px;
            background:#20b2aa;
            color:white;
            border:none;
            border-radius:25px;
            cursor:pointer;
            font-weight:bold;
            transition:.3s;
        }

        .downloadBtn:hover{
            background:#159895;
            transform:translateY(-2px);
        }

        .deleteBtn{
            padding:10px 18px;
            background:#ef4444;
            color:white;
            border:none;
            border-radius:25px;
            cursor:pointer;
            font-weight:bold;
            transition:.3s;
        }

        .deleteBtn:hover{
            background:#dc2626;
            transform:translateY(-2px);
        }

        .backBtn{
            margin-top:30px;
            padding:12px 30px;
            background:#1f3c88;
            color:white;
            border:none;
            border-radius:30px;
            cursor:pointer;
            font-size:15px;
            font-weight:bold;
            transition:.3s;
        }

        .backBtn:hover{
            background:#163172;
            transform:translateY(-2px);
        }

    </style>
</head>
<body>
<div class="container">
<h1>Uploaded Files</h1>
<%
    int userId = (Integer) session.getAttribute("userId");
    Connection con = DBConnection.getConnection();
    PreparedStatement countPs =
            con.prepareStatement("SELECT COUNT(*) FROM files WHERE user_id=?");
    countPs.setInt(1,userId);
    ResultSet countRs = countPs.executeQuery();
    int totalFiles = 0;
    if(countRs.next()){
        totalFiles = countRs.getInt(1);
    }
    countRs.close();
    countPs.close();
%>
<h3>Total Files : <%= totalFiles %></h3>
<table>
<tr>
    <th>File Name</th>
    <th>Upload Date</th>
    <th>Download</th>
    <th>Delete</th>
</tr>
<%
    PreparedStatement ps =
            con.prepareStatement("SELECT * FROM files WHERE user_id=?");
    ps.setInt(1,userId);
    ResultSet rs = ps.executeQuery();
    while(rs.next()){
%>
<tr>
    <td><%= rs.getString("filename") %></td>
    <td><%= rs.getString("upload_date") %></td>
    <td>
        <button class="downloadBtn"
        onclick="location.href='download?file=<%= rs.getString("filename") %>'">
            Download
        </button>
    </td>
    <td>
        <button class="deleteBtn"
        onclick="if(confirm('Are you sure you want to delete this file?')) location.href='delete?file=<%= rs.getString("filename") %>';">
            Delete
        </button>
    </td>
</tr>
<%
    }
    rs.close();
    ps.close();
    con.close();
%>
</table>
<center>
<button class="backBtn"
onclick="location.href='dashboard.jsp'">
 Back to Dashboard
</button>
</center>
</div>
</body>
</html>