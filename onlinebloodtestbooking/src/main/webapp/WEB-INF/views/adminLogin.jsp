<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="images/3.jpg" type="image/x-icon" />
    <title>LOG IN</title>
  </head>
  <style>
    
    body{
        background-image: url("images/2.5.jpg") ;
        background-repeat: no-repeat;
        
        background-position: center;
        background-size: cover;
        min-height: 100vh;

        
        overflow: hidden;
    }
    body h1 a {
        color: rgb(255, 255, 255);
        text-decoration: none;
    }
    body h1 a:hover {
        color: rgb(0, 0, 0);
      background-color: gray;
      box-shadow: 0 0 5px #0327f4, 0 0 25px #2703f4, 0 0 50px #1303f4,
        0 0 100px #1f02c5;
    }
    .login-box {
      position: absolute;
      top: 24%;
      left: 36%;
      display: flex;
      flex-direction: column;
      
      
      width: 400px;
      padding: 40px;
      transform: translate(-50, -50%);
      background: rgba(109, 109, 109, 0.5);
      box-sizing: border-box;
      box-shadow: 0 15px 25px rgb(0, 0, 0);
      border-radius: 10px;
    }

    .login-box h2 {
      margin: 0 0 30px;
      padding: 0;
      color: #fff;
      text-align: center;
    }

    .login-box .user-box {
      position: relative;
    }

    .login-box .user-box input {
      width: 100%;
      padding: 10px 0;
      font-size: 16px;
      color: #fff;
      margin-bottom: 30px;
      border: none;
      border-bottom: 1px solid #fff;
      outline: none;
      background: transparent;
    }

    .login-box .user-box label {
      position: absolute;
      top: 0;
      left: 0;
      padding: 10px 0;
      font-size: 16px;
      color: #fff;
      pointer-events: none;
      transition: 2s;
    }

    .login-box .user-box input:focus ~ label,
    .login-box .user-box input:valid ~ label {
      top: -20px;
      left: 0;
      color: #ffffff;
      font-size: 20px;
    }

    .login-box .user-box input:focus ,
    .login-box .user-box input:valid  {
        box-shadow:0 0 100px #ccc5f5;
    }

    .login-box form button {
      position: relative;
      display: inline-block;
      background-color: transparent;
      padding: 10px 20px;
      color: rgb(0, 0, 0);
      font-size: 16px;
      text-decoration: none;
      text-transform: uppercase;
      overflow: hidden;
      transition: 0.5s;
      margin-top: 40px;
      letter-spacing: 4px;
      outline: none;
      border: none;
    }

    .login-box button:hover {
      background: #1b03f4;
      color: #fff;
      border-radius: 5px;
      box-shadow: 0 0 5px #0327f4, 0 0 25px #2703f4, 0 0 50px #1303f4,
        0 0 100px #1f02c5;
    }

    .login-box button span {
      position: absolute;
      display: block;
    }

    .login-box button span:nth-child(1) {
      top: 0;
      left: -100%;
      width: 100%;
      height: 2px;
      background: linear-gradient(90deg, transparent, #ffffff);
      animation: btn-anim1 1s linear infinite;
    }

    @keyframes btn-anim1 {
      0% {
        left: -100%;
      }
      50%,
      100% {
        left: 100%;
      }
    }

    .login-box button span:nth-child(2) {
      top: -100%;
      right: 0;
      width: 2px;
      height: 100%;
      background: linear-gradient(180deg, transparent, #9cf3ff);
      animation: btn-anim2 1s linear infinite;
      animation-delay: 0.25s;
    }

    @keyframes btn-anim2 {
      0% {
        top: -100%;
      }
      50%,
      100% {
        top: 100%;
      }
    }

    .login-box button span:nth-child(3) {
      bottom: 0;
      right: -100%;
      width: 100%;
      height: 2px;
      background: linear-gradient(270deg, transparent, #50f5cc);
      animation: btn-anim3 1s linear infinite;
      animation-delay: 0.5s;
    }

    @keyframes btn-anim3 {
      0% {
        right: -100%;
      }
      50%,
      100% {
        right: 100%;
      }
    }

    .login-box button span:nth-child(4) {
      bottom: -100%;
      left: 0;
      width: 2px;
      height: 100%;
      background: linear-gradient(360deg, transparent, #00f7ff);
      animation: btn-anim4 1s linear infinite;
      animation-delay: 0.75s;
    }

    @keyframes btn-anim4 {
      0% {
        bottom: -100%;
      }
      50%,
      100% {
        bottom: 100%;
      }
    }
    @media screen and (max-width:600px) {
      body{
        background-image: url('images/dr.jpg') ;
        background-repeat: no-repeat;
        
        background-position: center;
        background-size: cover;
        min-height: 100vh;

        
        overflow: hidden;
    }
    body h1 a {
        color: rgb(255, 255, 255);
        text-decoration: none;
        
    }
    body h1 a:hover {
        color: rgb(0, 0, 0);
      background-color: gray;
      box-shadow: 0 0 5px #0327f4, 0 0 25px #2703f4, 0 0 50px #1303f4,
        0 0 100px #1f02c5;
    }
    .login-box {
      position: absolute;
      top: 20%;
      left: 5%;
      display: flex;
      flex-direction: column;
      
      
      width: 350px;
      padding: 40px;
      transform: translate(-50, -50%);
      background: rgba(109, 109, 109, 0.5);
      box-sizing: border-box;
      box-shadow: 0 15px 25px rgb(0, 0, 0);
      border-radius: 10px;
    }
    }
  </style>
  <body>
     
    <div class="login-box">
      <h2>Login</h2>
      
      <form id="login-form" class="form" action="adminValidation" method="post">  
        <div class="user-box">
          <input type="username" name="username" id="username" required />
          <label>Username</label>
        </div>
        <div class="user-box">
          <input type="password"  id="password" name="password" required />
          <label>Password</label>
        </div>
        <button type="submit">
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          Submit
        </button>
          
       
        </form>
    </div>
  </body>
</html>
