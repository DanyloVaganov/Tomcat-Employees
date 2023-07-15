<html>
<head>
    <title>Employee Management</title>
    <style>
        body {
            background-color: white;
            font-family: Arial, sans-serif;
            color: #333;
        }

        .container {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        h1 {
            text-align: center;
            color: #18ab29;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
        }

        .form-group input[type="text"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-group input[type="submit"] {
            background-color: #44c767;
            border-radius: 16px;
            border: 1px solid #18ab29;
            display: block;
            margin: 0 auto;
            cursor: pointer;
            color: #ffffff;
            font-family: Arial;
            font-size: 14px;
            padding: 8px 16px;
            text-decoration: none;
            text-shadow: 0px 1px 0px #2f6627;
        }

        .form-group input[type="submit"]:hover {
            background-color: #5cbf2a;
        }

        .form-group input[type="submit"]:active {
            position: relative;
            top: 1px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Employees List</h1>
        <form action="${book != null ? 'update' : 'insert'}" method="post">
            <div class="form-group">
                <input type="text" id="id" name="id" value="" hidden />
            </div>
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="" />
            </div>
            <div class="form-group">
                <label for="position">Position:</label>
                <input type="text" id="position" name="position" value="" />
            </div>
            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="text" id="phone" name="phone" value="" />
            </div>
            <div class="form-group">
                <input type="submit" value="Save" />
            </div>
        </form>
    </div>
</body>
</html>
