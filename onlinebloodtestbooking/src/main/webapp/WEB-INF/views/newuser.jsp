<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/3.jpg" type="image/x-icon" />
    <title>SIGN IN</title>
</head>
<style>
    *{
        box-sizing: border-box;
    }
    body{
        margin: 0;
        font-family: "poppins", sans-serif;
        height: 100vh;
        background: #091a20;
        color: #fff;
        display: grid;
        place-content: center;
    }
    .input-container{
        width: 700px;
    }
    .input-group{
        
        display: flex;
        align-items: center;
    }
    body input{
        padding: 15px 3rem 15px 15px;
        max-width: 10cm;
        background: #112d37;
        outline: none;
        border: 1px solid #215164;
        border-radius: 4px;
        color: #fff;
        transition: width .9s, height .9s, border-radius 0.9s;
        font-size: 16px;
        margin-bottom: .5cm;
    }
    body input::placeholder{
        color: #346a80;
    }
    body input:focus{
        border: 1px solid #55b7dd;
        box-shadow: 0px 0px 2px 2px #55b7dd34;
    }
    .input-container input{
        padding: 15px 3rem 15px 15px;
        width: 1005;
        background: #112d37;
        outline: none;
        border: 1px solid #215164;
        border-radius: 4px;
        color: #fff;
        transition: width .9s, height .9s, border-radius 0.9s;
        font-size: 16px;
        
    }
    .input-container input::placeholder{
        color: #346a80;
    }
    .input-container input:focus{
        border: 1px solid #55b7dd;
        box-shadow: 0px 0px 2px 2px #55b7dd34;
    }
    .input-group input{
        padding: 15px 3rem 15px 15px;
        width: 1005;
        background: #112d37;
        outline: none;
        border: 1px solid #215164;
        border-radius: 4px;
        color: #fff;
        transition: width .9s, height .9s, border-radius 0.9s;
        font-size: 16px;
    }
    .input-group input::placeholder{
        color: #346a80;
    }
    .input-group input:focus{
        border: 1px solid #55b7dd;
        box-shadow: 0px 0px 2px 2px #55b7dd34;
    }
    .input-group .toggle{
        position: absolute;
        right: 10px;
        font-size: 25px;
        cursor: pointer;
        user-select: none;
        z-index: 99;
        margin-right: 4cm;
    }
    .input-group .ripple{
        background: #fff;
        display: block;
        margin-right: 4cm;
        position: absolute;
        height: 35px;
        width: 35px;
        border-radius: 50%;
        right: 10px;
        transition: all 0.2s;
        z-index: 1;
    }
    .pass-strength{
        display: flex;
        align-items: center;
        margin-top: 3px;
    }
    .strength-label{
        font-size: 12px;
        margin-left: 10px;
    }
    .strength-percent{
        flex: 1;
        height: 5px;
        border-radius: 10px;
        display: block;
        background: #eee;
    }
    .strength-percent span{
        display: block;
        height: 100%;
        transition: all 0.4s;
        border-radius: 10px;
    }
    .weak{
        background: red;
        width: 35%;
    }
    .average{
        background: #ffd000;
        width: 65%;
    }
    .strong{
        background: green;
        width: 100%;
    }
    .gradient-btn2 {
  display: grid;
  place-items: center;
  text-decoration: none;
  color: rgb(255, 255, 255);
  background-image: linear-gradient(
    to right,
    #112d37 0,
    #215164 51%,
    #55b7dd34 100%
  );
  border-radius: 10px;
  background-size: 200% auto;
  transition: 3s ease-in-out;
  width: 5cm;
  height: 1cm;
  border: none;
  outline: none;
}

.gradient-btn2:hover {
  background-position: right center;
  transition: 1s ease-in-out;
}

@media screen and (max-width: 1000px) {
    body input{
        margin-left: 4.2cm;
        width: 6cm;
        height: 1cm;
    }
    .pass-strength{
        max-width: 6cm;
        margin-left: 4.2cm;

    }
    .bu{
        margin-left: 5cm;
    }
    .box{
        margin-bottom: 8cm;
        margin-left: .5cm;
        margin-top: 1cm;
    }
    

}
</style>
<body>
    <form action="registered" method="post" style=" margin-top: -15px;">
    <div class="box">
        
        <input name="emailid" type="email" placeholder="enter your e-mail id" required>
    <div class="input-container">
        
        <input name="username" type="username" placeholder="create your username" required>
        <div class="input-group">
            
            <input name="password" type="password" placeholder="crate your password" required />
            
        </div>
        <div class="pass-strength">
            <div class="strength-percent"><span></span></div>
            <span class="strength-label">Strength</span>
        </div>
        <br>
        <div class="bu">
            <button type="submit" class="gradient-btn2">Proceed</button>
        </div>
    </div>
    </div>
    </form>
</body>
<script>
        const passInput = document.querySelector(".input-group input");
        const toggleIcon = document.querySelector(".input-group .toggle");
        const ripple = document.querySelector(".input-group .ripple");
        const percentBar = document.querySelector(".strength-percent span");
        const passLabel = document.querySelector(".strength-label");

        passInput.addEventListener("input", handlePassInput);
        

        function handlePassInput(e) {
            if (passInput.value.length = 0) {
                passLabel.innerHTML = "Strength";
                addClass()
            } else if (passInput.value.length < 4) {
                passLabel.innerHTML = "weak";
                addClass("weak");
            } else if (passInput.value.length < 7) {
                passLabel.innerHTML = "average";
                addClass("average");
            } else {
                passLabel.innerHTML = "Strong";
                addClass("strong");
            }
        }

        function addClass(className) {
            percentBar.classList.remove("weak");
            percentBar.classList.remove("average");
            percentBar.classList.remove("strong");
            if (className) {
           percentBar.classList.add(className); 
         }
        }
       
       
</script>
</html>