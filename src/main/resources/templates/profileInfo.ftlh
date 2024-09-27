<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 20px;
        }
        .profile-container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #ffffff;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .profile-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .profile-picture {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            overflow: hidden;
            margin: 0 auto 10px;
        }
        .profile-picture img {
            width: 100%;
            height: auto;
        }
        .profile-name {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .profile-email {
            color: #666;
        }
        .profile-info {
            margin-bottom: 20px;
        }
        .profile-info-item {
            margin-bottom: 10px;
        }
        .profile-info-label {
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="profile-container">
    <div class="profile-header">
        <div class="profile-picture">
            <img src="photos/profile-picture.jpg" alt="Profile Picture">
        </div>
        <div class="profile-name">${user}</div>
        <div class="profile-email">john@example.com</div>
    </div>
    <div class="profile-info">
        <div class="profile-info-item">
            <span class="profile-info-label">Age:</span> 30
        </div>
        <div class="profile-info-item">
            <span class="profile-info-label">Location:</span> New York, USA
        </div>
        <div class="profile-info-item">
            <span class="profile-info-label">Interests:</span> Traveling, Photography, Cooking
        </div>
    </div>
</div>
</body>
</html>
