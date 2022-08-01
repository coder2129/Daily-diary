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
        background-image: url(images/pexels-pixabay-247676.jpg);
        background-size: 100%;
        background-color: rgb(0, 0, 0);
        background-position-y: -8cm;
        background-repeat: no-repeat;
    }
    .box{
            background: rgba(255, 255, 255, 0.5);
            border-radius: .5cm;
            height: 13cm;
            margin-left: 8cm;
            margin-right: 6cm;
            margin-top: 2cm;
        }
        .box h1{
            text-align: center;
            text-transform: uppercase;
        }
        
        .box h2{
            text-align: center;
            text-transform: uppercase;
            margin-bottom: .5cm;
        }
        .box textarea{
           width: 18cm;
           height: 8cm;
           margin-left: 1cm;
           font-size: x-large;
           text-transform: uppercase;
           outline: none;
           border: none;  
           border-radius: .5cm;
        }
        button{
            font-size: .5cm;
            background: transparent;
            outline: none;
            border: none;
            color: thistle;
        }
         button:hover{
            
            cursor: pointer;
            font-size: .7cm;
        }
        
         i{
            color: #fff;
            background-color: red;
            font-size: 2rem;
            display: none;
            height: 1cm;
            width: 3cm;
        }
    @media screen and (max-width: 1000px) {
        body{
        background-image: url(images/3.1.jpeg);
        background-repeat: no-repeat;
        background-size: 150vh;
        background-position-x: -13cm;
        background-position-y: -4cm;
    }
    .box{
        background: rgba(255, 255, 255, 0.5);
        border-radius: .5cm;
        height: 14cm;
        width: 7cm;
        margin-top: 1cm;
        margin-left: 1cm;
        
        
    }
    .box h1{
        text-transform: uppercase;
       margin-left: 1.3cm;
    }
    
    .box h2 {
        text-transform: uppercase;
        font-size: .5cm;
        width: 7cm;
        text-align: center;
    }
    .box textarea{
        margin-left: .4cm;
        border-radius: .3cm;
        outline: none;
        border: none;
        font-size: .5cm;
        max-width: 6cm;
        text-transform: capitalize;
        height: 11cm;
    }
   }
    
</style>
</head>
<body>
    
    <div class="box">
        <h1>hello sir</h1>
        <a href="addday"><button type="submit">GO BACK</button></a>
        
        <h2>here is your day</h2>
        <textarea name="con" placeholder="   write about your       
    day" id="con" cols="30" rows="10" spellcheck="false"></textarea>
        
        
    </div>
</body>
</html>