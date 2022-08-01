<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Welcome Page</title>
        <style>
            h1{
                margin: 0;
                padding: 10px;
                color: #fff;
                text-align: left;
                text-justify: auto;
            }
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: console;
            }
            body{
                display: flex;
                justify-content: centre;
                align-items: centre;
                min-height: 100vh;
                background: #111;
            }
            .container{
                position: relative;
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 40px 0;
                flex-wrap: wrap;
            }
            .container .box{
                position: relative;
                width: 320px;
                height: 400px;
                color: #fff;
                justify-content: center;
                align-items: center;
                margin: 20px 30px;
                transition: 0.5s;
            }
            .container .box:hover{
                transform: translateY(-20px);
            }
            .container .box::before
            {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: linear-gradient(45deg, #ffbc00, #ff0058);
            }
            .container .box::after
            {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: linear-gradient(45deg, #ffbc00, #ff0058);
                filter: blur(30px);
            }
            .container .box:nth-child(2)::before,
            .container .box:nth-child(2)::after
            {
                background: linear-gradient(315deg, #03a9f4, #ff0058);
            }
            .container .box:nth-child(3)::before,
            .container .box:nth-child(3)::after
            {
                background: linear-gradient(315deg, #4dff03, #00d0ff);
            }
            .container .box span{
                position: absolute;
                top: 6px;
                left: 6px;
                right: 6px;
                bottom: 6px;
                background: rgba(0, 0, 0, 0.6);
                z-index: 2;
            }
            .container .box span::before
            {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                width: 50%;
                height: 100%;
                background: rgba(255,255,255,0.1);
                pointer-events: none;
            }
            .container .box .content
            {
                position: relative;
                z-index: 10;
                padding: 20px 40px;
            }
            .container .box .content h2
            {
                font-size: 2em;
                color: #fff;
                margin-bottom: 10px;
            
            }
            .container .box .content p
            {
                font-size: 1.1em;
                color: #fff;
                margin-bottom: 10px;
                line-height: 1.4em;
            }
            .container .box .content a{
                text-decoration: none;
                color: rgba(255, 255, 255, 0.685);
            }
            .container .box .content a:hover{
                color: #fff;
            }
    
        </style>
    </head>
    <body>
        <h1>Welcome To Your Day Note Down</h1>
    
        <div class="container">
            <div class="box">
                <span></span>
                <div class="content">
                    <h2>Login</h2>
                    <p>Login for registered users</p>
                    <a href="adminLogin">Login Users...</a>
                </div>
            </div>
            <div class="box">
                <span></span>
                <div class="content">
                    <h2>New User Registration</h2>
                    <p>Select for new user</p>
                    <a href="newuser">New Registration...</a>
                </div>
            </div>
            
        </div>
        
    </body>
    </html>