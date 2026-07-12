<!DOCTYPE html>
<html>
<head>
    <title>Cloud File Storage</title>
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

        .navbar{
            display:flex;
            justify-content:space-between;
            align-items:center;
            padding:20px 70px;
            background:#1f3c88;
            box-shadow:0 5px 15px rgba(0,0,0,.20);
            border-radius:0 0 20px 20px;
        }

        .logo{
            font-size:28px;
            font-weight:bold;
            color:white;
        }

        .nav a{
            text-decoration:none;
            margin-left:25px;
            color:white;
            font-weight:bold;
            transition:0.3s;
        }

        .nav a:hover{
            color:#7ed6df;
        }

        .hero{
            text-align:center;
            padding:90px 20px;
            animation:fadeIn 1s ease;
        }

        .hero h1{
            font-size:55px;
            color:#1f3c88;
            margin-bottom:18px;
            font-weight:bold;
        }

        .hero p{
            font-size:20px;
            color:#34495e;
            margin-bottom:35px;
            line-height:30px;
        }

        .btn{
            padding:14px 35px;
            border:none;
            border-radius:30px;
            background:#1f3c88;
            color:white;
            font-size:17px;
            font-weight:bold;
            cursor:pointer;
            margin:10px;
            transition:.3s;
        }

        .btn:hover{
            background:#163172;
            transform:translateY(-4px) scale(1.05);
            box-shadow:0 10px 20px rgba(0,0,0,.20);
        }

        @keyframes fadeIn{
            from{
                opacity:0;
                transform:translateY(30px);
            }
            to{
                opacity:1;
                transform:translateY(0);
            }
        }

        .features{
            width:90%;
            margin:auto;
            display:flex;
            justify-content:center;
            gap:25px;
            flex-wrap:wrap;
            padding-bottom:50px;
        }

        .card{
            width:260px;
            background:white;
            padding:35px;
            border-radius:20px;
            text-align:center;
            box-shadow:0 10px 25px rgba(0,0,0,.15);
            transition:.35s;
        }

        .card:hover{
            transform:translateY(-10px) scale(1.03);
            box-shadow:0 18px 35px rgba(0,0,0,.20);
        }

        .card h2{
            color:#1f3c88;
            margin-bottom:15px;
        }

        .card p{
            color:#555;
        }

        footer{
            text-align:center;
            padding:20px;
            color:#1f3c88;
            font-weight:bold;
        }

    </style>
</head>
<body>
<div class="navbar">
    <div class="logo">
        Cloud File Storage
    </div>
    <div class="nav">
        <a href="login.jsp">Login</a>
        <a href="register.jsp">Register</a>
    </div>
</div>
<div class="hero">
    <h1>Cloud File Storage</h1>
    <p>
        Store, Upload, Download and Manage your files
        securely anytime, anywhere.
    </p>
    <button class="btn"
            onclick="location.href='login.jsp'">
        Login
    </button>
    <button class="btn"
            onclick="location.href='register.jsp'">
        Register
    </button>
</div>
<div class="features">

    <div class="card">
        <h2>Upload Files</h2>
        <p>Upload files securely in just one click.</p>
    </div>
    <div class="card">
        <h2>Manage Files</h2>
        <p>View, download and delete your uploaded files.</p>
    </div>
    <div class="card">
        <h2>Secure Storage</h2>
        <p>Your files are accessible only after login.</p>
    </div>
</div>
</body>
</html>