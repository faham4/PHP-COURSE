<?php
$conn = mysqli_connect("localhost", "root", "", "filehandling");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Directory paths
    $image_dir = "uploaded-images/";
    $cv_dir = "uploaded-cvs/";
    // Handle image upload
    if (isset($_FILES["image"])) {
        $image_name = $_FILES["image"]["name"];
        $image_tmp_name = $_FILES["image"]["tmp_name"];
        $image_size = $_FILES["image"]["size"];
        $image_full_path = $image_dir . $image_name;

        $image_upload = move_uploaded_file($image_tmp_name, $image_full_path);
        if ($image_upload) {
            $sql = "INSERT INTO files (Tmp_Name, Full_Path, File) VALUES ('$image_tmp_name', '$image_full_path', '$image_name')";
            $res = mysqli_query($conn, $sql);

            if ($res) {
                echo "<script>alert('Image uploaded successfully.');</script>";
            } else {
                echo "<script>alert('Failed to upload image.');</script>";
            }
        } else {
            echo "<script>alert('Failed to move the image file.');</script>";
        }
    }

    // Handle CV upload
    if (isset($_FILES["cv"])) {
        $cv_name = $_FILES["cv"]["name"];
        $cv_tmp_name = $_FILES["cv"]["tmp_name"];
        $cv_size = $_FILES["cv"]["size"];
        $cv_full_path = $cv_dir . $cv_name;

        $cv_upload = move_uploaded_file($cv_tmp_name, $cv_full_path);
        if ($cv_upload) {
            $sql = "INSERT INTO files (Tmp_Name, Full_Path, File) VALUES ('$cv_tmp_name', '$cv_full_path', '$cv_name')";
            $res = mysqli_query($conn, $sql);

            if ($res) {
                echo "<script>alert('CV uploaded successfully.');</script>";
            } else {
                echo "<script>alert('Failed to upload CV.');</script>";
            }
        } else {
            echo "<script>alert('Failed to move the CV file.');</script>";
        }
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assigment</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body>
<header>
        <h1>LOGO</h1>
        <button class="menu-toggle">Menu</button>
    <nav>
        <a href="#" class="active">Home</a>
        <a href="#">About</a>
        <a href="#">Contact</a>
        <a href="#">Service</a>
        <a href="#">Feedback</a>
    <button type="submit" class="btn">LOGIN</button>
    </nav>
    </header>
    <div class="upload-container">
    <h2>Upload Your Image and CV</h2>
    <form action="filehandling.php" method="POST" enctype="multipart/form-data">
        <div class="file-input">
            <label for="image">Select Image:</label><br>
            <input type="file" name="image" id="image" accept="image/*" required>
        </div>
        <div class="file-input">
            <label for="cv">Select CV (PDF or DOCX):</label><br>
            <input type="file" name="cv" id="cv" accept=".pdf, .docx" required >
        </div>
        <input type="submit" value="Upload" class="submit-btn">
    </form>
</div>




    <script>
        const menuToggle = document.querySelector('.menu-toggle');
const nav = document.querySelector('header nav');

menuToggle.addEventListener('click', () => {
    nav.classList.toggle('active');
});

    </script>
</body>
</html>