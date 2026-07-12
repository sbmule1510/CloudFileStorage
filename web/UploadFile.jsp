<!DOCTYPE html>
<html>
<head>
    <title>Upload File</title>
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
            width:430px;
            background:#ffffff;
            padding:40px;
            border-radius:20px;
            box-shadow:0 10px 25px rgba(0,0,0,.15);
            text-align:center;
            transition:.3s;
        }

        .container:hover{
            transform:translateY(-5px);
            box-shadow:0 18px 35px rgba(0,0,0,.20);
        }

        h1{
            color:#1f3c88;
            margin-bottom:10px;
            font-size:32px;
        }

        p{
            color:#34495e;
            margin-bottom:30px;
            font-size:15px;
        }

        input[type=file]{
            width:100%;
            padding:12px;
            margin-bottom:25px;
            border:1px solid #cbd5e1;
            border-radius:10px;
            cursor:pointer;
            background:white;
        }

        input[type=file]:hover{
            border-color:#20b2aa;
        }

        .uploadBtn{
            width:100%;
            padding:13px;
            background:#20b2aa;
            color:white;
            border:none;
            border-radius:30px;
            font-size:16px;
            font-weight:bold;
            cursor:pointer;
            transition:.3s;
        }

        .uploadBtn:hover{
            background:#159895;
            transform:translateY(-2px);
        }

        .backBtn{
            margin-top:18px;
            width:100%;
            padding:13px;
            background:#1f3c88;
            color:white;
            border:none;
            border-radius:30px;
            font-size:16px;
            font-weight:bold;
            cursor:pointer;
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
    <h1>Upload File</h1>
    <p>Select a file from your computer to upload securely.</p>
    <form action="upload" method="post" enctype="multipart/form-data">
        <input type="file" name="file" required>
        <button class="uploadBtn" type="submit">
            Upload File
        </button>
    </form>
    <button class="backBtn"
            onclick="location.href='dashboard.jsp'">
         Back to Dashboard
    </button>
</div>
</body>
</html>