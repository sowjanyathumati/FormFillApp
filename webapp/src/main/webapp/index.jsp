<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mess Feedback System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 0;
            background-color: #f4f4f9;
        }
        .form-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            background: white;
        }
        .form-container h2 {
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"], input[type="password"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .message {
            margin-top: 15px;
            padding: 10px;
            text-align: center;
            border-radius: 5px;
            color: white;
            display: none;
        }
        .authorized {
            background-color: #28a745;
        }
        .unauthorized {
            background-color: #dc3545;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Mess Feedback System</h2>
    <form id="authForm">
        <div class="form-group">
            <label for="userId">User ID:</label>
            <input type="text" id="userId" name="userId" placeholder="Enter your User ID" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>
        </div>
        <div class="form-group">
            <input type="submit" value="Submit">
        </div>
    </form>
    <div id="message" class="message"></div>
</div>

<script>
    const form = document.getElementById('authForm');
    const messageDiv = document.getElementById('message');

    form.addEventListener('submit', function(event) {
        event.preventDefault();

        // Mock authorization check
        const userId = document.getElementById('userId').value;
        const password = document.getElementById('password').value;

        if (userId === 'authorizedUser' && password === '12345') {
            // Authorized user
            messageDiv.textContent = 'Welcome! You are authorized to submit feedback.';
            messageDiv.className = 'message authorized';
            messageDiv.style.display = 'block';
        } else {
            // Unauthorized user
            messageDiv.textContent = 'Error: You are not authorized to submit feedback.';
            messageDiv.className = 'message unauthorized';
            messageDiv.style.display = 'block';
        }
    });
</script>

</body>
</html>
