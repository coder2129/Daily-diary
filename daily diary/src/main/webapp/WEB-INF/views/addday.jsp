<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/3.jpg" type="image/x-icon" />
    <title>Document</title>
<style>
    body{
        background-image: url(images/3.1.jpeg);
        background-size: 100%;
        background-color: rgb(0, 0, 0);
        overflow: hidden;
        background-repeat: no-repeat;
        background-position: center;
    }
    .box{
            background: rgba(255, 255, 255, 0.5);
            border-radius: .5cm;
            height: 14cm;
            margin-left: 8cm;
            margin-right: 6cm;
            margin-top: 2cm;
        }
        .box h1{
            text-align: center;
            text-transform: uppercase;
        }
        .box .lock a button{
        height: 1cm;
        width: 5cm;
        font-size: .5cm;
        border-radius: 2cm;
        outline: none;
        border: none;
        }
        .box .lock a button:hover{
        cursor: pointer;
        }
        
        .box h2{
            text-align: center;
            text-transform: uppercase;
            margin-bottom: .5cm;
        }
        .box textarea{
           width: 18cm;
           height: 2cm;
           margin-left: 1cm;
           font-size: x-large;
           text-transform: uppercase;
           outline: none;
           border: none;  
           border-radius: .2cm;
        }
        .btn{
        padding: 10px 60px;
        background: #fff;
        border: 0;
        outline: none;
        cursor: pointer;
        font-weight: 500;
        font-size: 22px;
        border-radius: 30px;
        margin-left: 7.5cm;
        

    }
        
        .popup .sas{
        margin-top: 50px;
        width: 70%;
        padding: 10px 0;
        background: #6fd649;
        color: #fff;
        border: 0;
        outline: none;
        font-size: 18px;
        border-radius: 4px;
        cursor: pointer;
        box-shadow: 0 5px 5px rgba(0, 0, 0, 0.2);
    }
    @media screen and (max-width: 900px) {
       
    body{
        background-image: url(images/3.1.jpeg);
        background-repeat: no-repeat;
        background-size: 150vh;
        background-position-x: -13cm;
        background-position-y: -3cm;
    }
    .box{
        background: rgba(255, 255, 255, 0.5);
        border-radius: .5cm;
        height: 14cm;
        width: 7cm;
        margin-top: 3cm;
        margin-left: 1cm;
        
        
    }
    .box h1{
        text-transform: uppercase;
        margin-left: .2cm;
    }
    .box .lock a button{
        height: 1cm;
        width: 4cm;

        border-radius: 1cm;
        outline: none;
        border: none;
    }
    .box h2 {
        text-transform: uppercase;
        font-size: .5cm;
        width: 7cm;
        text-align: center;
    }
    .box textarea{
        margin-left: .2cm;
        border-radius: .3cm;
        outline: none;
        border: none;
        font-size: .5cm;
        max-width: 6.5cm;
        text-transform: capitalize;
    }
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins' , sans-serif;
    }
    .btn{
        padding: 10px 60px;
        background: #fff;
        border: 0;
        outline: none;
        cursor: pointer;
        font-weight: 500;
        font-size: 22px;
        border-radius: 30px;
        margin-left: 1cm;
        
    }
    .popup{
        width: 400px;
        background: #fff;
        border-radius: 6px;
        position: absolute;
        top: 0;
        left: 50%;
        transform: translate(-50%,-50%)scale(0.1);
        text-align: center;
        padding: 0 30px 30px;
        color: #333;
        visibility: hidden;
        transition: transform 0.4s, top 0.4s;
    }
    .open-popup{
        visibility: visible;
        top: 50%;
        transform: translate(-50%,-50%)scale(1);
    }
    .popup img{
        width: 100px;
        margin-top: -50px;
        border-radius: 50%;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    }
    .popup h2{
        font-size: 38px;
        font-weight: 500;
        margin: 30px 0 10px;
    }
    .popup button{
        margin-top: 50px;
        width: 100%;
        padding: 10px 0;
        background: #6fd649;
        color: #fff;
        border: 0;
        outline: none;
        font-size: 18px;
        border-radius: 4px;
        cursor: pointer;
        box-shadow: 0 5px 5px rgba(0, 0, 0, 0.2);
    }

    }
    
    

    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins' , sans-serif;
    }
    
    
    .popup{
        width: 400px;
        background: #fff;
        border-radius: 6px;
        position: absolute;
        top: 0;
        left: 50%;
        transform: translate(-50%,-50%)scale(0.1);
        text-align: center;
        padding: 0 30px 30px;
        color: #333;
        visibility: hidden;
        transition: transform 0.4s, top 0.4s;
    }
    .open-popup{
        visibility: visible;
        top: 50%;
        transform: translate(-50%,-50%)scale(1);
    }
    .popup img{
        width: 100px;
        margin-top: -50px;
        border-radius: 50%;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    }
    .popup h2{
        font-size: 38px;
        font-weight: 500;
        margin: 30px 0 10px;
    }
    
</style>
</head>
<body>
    <div class="box">
        <h1>hello sir</h1>
    <form action="registeredday" method="post" style=" margin-top: -15px;">

        <div class="lock">
            <a href="viewday">see your days</a>
        </div>
        
        <br>
        <h2>write adout your day</h2>
        <textarea name="password" type="password" placeholder="Enter previous password"></textarea>
        <textarea name="urday" placeholder="   write about your       
         day" id="urday" cols="5" rows="2" spellcheck="false"></textarea>
        <br>
        <br>
        
        <div class="container">
            <button type="submit" class="btn" onclick="openPopup()">Submit</button>
            <div class="popup" id="popup">
                <img src="images/black.jpeg">
                <h2>Thank you</h2>
                <p>you and your deatalis are in</p>
                <a target="_self" href="viewday"><button type="re" class="sas" onclick="closePopup()" onsubmit="dir()" >ok</button></a>
            </div>
        </div>
    </form>
    
        
        
    </div>
<script>
    let popup = document.getElementById("popup")
    
    function openPopup() {
        popup.classList.add("open-popup")
    }
    function closePopup() {
        popup.classList.remove("open-popup")
        
    }
    </script>    
</body>
</html>