<?php
if(isset($_POST["submit"])){
    if(empty($_POST["city"])){
        echo "Enter city name";
    }else {
        $city =  $_POST["city"];
        $api_key = "758bf582115d96b0f230e74ed1295081";
        $api = "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$api_key";
        $api_data = file_get_contents($api);
        // print_r($api_data);

        $weather = json_decode($api_data,true);
        // print_r($weather);
        $celcius = $weather["main"]["temp"] -273;

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weather App</title>
 <style>
    body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}
.container {
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

input {
    padding: 10px;
    margin-right: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
}

.btn{
    padding: 10px 20px;
    background-color: #007BFF;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.btn:hover {
    background-color: #0056b3;
}

#result p {
    margin-top: 20px;
}

 </style>
</head>
<body>
   <section class="container">
    <form method="post">
        <h1>The  Weather App</h1>
        <input type="text" name="city" placeholder="Enter the City" required>
        <input type="submit" name="submit" value="Check Weather" class="btn">

    </form>
<?php
 echo $weather["weather"][0]["description"];
 echo "<br>";
 echo $celcius .  "°C";
 }
 }
?>
   </section>
</body>
</html>
