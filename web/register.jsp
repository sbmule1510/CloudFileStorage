<!DOCTYPE html>
<html>
<head>
    <title>Cloud File Storage - Register</title>
    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:Arial,sans-serif;
        }

        body{
            background:linear-gradient(135deg,#a8edea,#7ed6df,#63cdda);
            display:flex;
            justify-content:center;
            align-items:center;
            min-height:100vh;
        }

        .container{
            width:420px;
            background:#ffffff;
            padding:40px;
            border-radius:20px;
            box-shadow:0 10px 25px rgba(0,0,0,.15);
            transition:.3s;
        }

        .container:hover{
            transform:translateY(-5px);
            box-shadow:0 18px 35px rgba(0,0,0,.20);
        }

        h2{
            text-align:center;
            color:#1f3c88;
            font-size:32px;
            margin-bottom:10px;
        }

        p{
            text-align:center;
            color:#34495e;
            margin-bottom:30px;
            font-size:15px;
        }

        input{
            width:100%;
            padding:13px;
            margin-bottom:18px;
            border:1px solid #cbd5e1;
            border-radius:10px;
            font-size:15px;
            outline:none;
            transition:.3s;
        }

        input:focus{
            border-color:#20b2aa;
            box-shadow:0 0 8px rgba(32,178,170,.30);
        }

        button{
            width:100%;
            padding:13px;
            background:#1f3c88;
            color:white;
            border:none;
            border-radius:30px;
            cursor:pointer;
            font-size:16px;
            font-weight:bold;
            transition:.3s;
        }

        button:hover{
            background:#163172;
            transform:translateY(-2px);
        }

        .link{
            text-align:center;
            margin-top:25px;
            color:#555;
        }

        .link a{
            color:#1f3c88;
            text-decoration:none;
            font-weight:bold;
        }

        .link a:hover{
            color:#20b2aa;
            text-decoration:underline;
        }

    </style>
</head>
<body>
<div class="container">
    <h2>Cloud File Storage</h2>
    <p>Create your account to securely store your files.</p>
    <form action="register" method="post">
        <input
            type="text"
            name="username"
            placeholder="Enter Username"
            required>
        <input
            type="email"
            name="email"
            placeholder="Enter Email"
            required>
        <input
            type="password"
            name="password"
            placeholder="Enter Password"
            required>
        <button type="submit">
            Register
        </button>
    </form>
    <div class="link">
        Already have an account?
        <br><br>
        <a href="login.jsp">
            Login Here
        </a>
    </div>
</div>
</body>
</html>