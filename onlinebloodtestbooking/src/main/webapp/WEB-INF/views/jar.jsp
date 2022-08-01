<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/3.jpg" type="image/x-icon" />
    <title>hello</title>
    <style>
        body{
            background-color: rgb(0, 0, 0);
            

        }
        ul {
            margin: 0;
            padding: 0;
            background-color: rgb(255, 0, 0);
            background-size: cover;
            height: 17.3cm;
            background-image: url(images/2.6.jpg);
            background-repeat: no-repeat;
            
        }
        @media screen and (max-width: 900px) {
            ul{
                width: 10.5cm;
                height: 24cm;
                margin: 0;
                padding: 0;
            }
        }
        
    </style>
</head>
<body>
    <ul class="btn" onclick="jar()" >
    </ul>
    
</body>
<script>
    const move = new Audio('java/Iron Man.mp3');
    const btn = document.getElementsByClassName('btn')
     
    window.addEventListener('keydown', e =>{
    inputDir = {x: 0 ,y: 1} // Start the game
    open('addday')

    move.play();
    });
    function jar() {
     open('addday')

     move.play();
    }
    
    </script>
</html>