<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Marksheet</title>
    <style>
        body {
            margin: 0;
            padding: 10px;
            font-family: Arial, sans-serif;
            background-color:  #f0f0f0;
        }
        .container{
            display: block;
            background-color:  #fff;
            border-radius:5px;
            padding: 20px;
            box-shadow:0 2px 10px rgba(0,0,0,0.1);
            max-width: 300px;      
            margin-left: auto;
            margin-right: auto;
            width: 40%;
            
        }
        .container h2{
            color: #333;
            text-align:center;   

        }
        .Marksheet{
            border:2px solid #ccc;
            padding: 10px;
            margin-bottom:10px;

        }
        .Marksheet h3{
            margin-top:0;
        }
        .Marksheet p{
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Marksheet</h2>
<?php
class Marksheet{
    public $studentName, $subject ,$marks;

function __construct($studentName,$subject,$marks){
    $this->studentName = $studentName;
    $this->subject = $subject;
    $this->marks = $marks;
}
function displayMarksheet() {
    echo "<div class='Marksheet'>";
    echo "<h3>Student Name: " .  $this->studentName . "</h3>";
    echo "<p><strong>Subject:</strong> " . $this->subject . "</p>";
    echo "<p><strong>Marks:</strong> " . $this->marks . " / 100</p>";
    echo "</div>";
    
}
}
$student1  = new Marksheet("Aziz", "Maths", 85);
$student2  = new Marksheet("Ahmed", "Science", 90);
$student3  = new Marksheet("Mahad", "Physics", 50);
 
$student1->displayMarksheet();
$student2->displayMarksheet();
$student3->displayMarksheet();



?>

    </div>
</body>
</html>