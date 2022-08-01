<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="images/3.jpg" type="image/x-icon" />
    <body  oncontextmenu="return false"></body>
    <title>quiz</title>
</head>
<style>
    
@import url('https://fonts.googleapis.com/css2?family=poppins:wght@200;300;400;500&display=swap');

*{
    box-sizing: border-box;
    
}
body{
    background-image: url('images/black.jpeg');
    min-height: 100vh;
    background-size: 105vw 100vh;
    background-repeat: no-repeat;
    display: flex;
    justify-content: center;
    align-items: center;
    
    overflow: hidden;
    
}

.quiz-container{
    background-color: rgb(0, 0, 0);
    color: aquamarine;
    border-radius: 10px;
    box-shadow: 3px 6px 10px 2px rgba(100, 100, 100, 0.1);
    width: 600px;
    overflow: hidden;
    font-family: 'poppins', sans-serif;
    
    
    
}
.quiz-header{
    padding: 4rem;
}
h2{
    padding: 1rem;
    text-align: center;
    margin: 0;
}

ul{
    list-style-type: none;
    padding: 0;
}
ul li{
    font-size: 1.2rem;
    margin: 1rem 0;
}
ul li label{
    cursor: pointer;
}
button{
    background-color: rgb(25, 0, 255);
    color: #fff;
    border: tomato;
    display: block;
    width: 30cm;
    height: 60%;
    cursor: pointer;
    text-align: justify;
    font-size: 2rem;
    font-family: inherit;
    padding: 1.3rem;
    list-style: none;
}
button:hover{
    background-color: #fff;
    color: #000;
}
button:focus{
    outline: royalblue;
    background-color: darkblue;
}

a button{
    background-color: rgb(25, 0, 255);
    color: #fff;
    border: tomato;
    display: block;
    width: 30cm;
    height: 60%;
    cursor: pointer;
    text-align: justify;
    font-size: 2rem;
    font-family: inherit;
    padding: 1.3rem;
    text-decoration: none;
    list-style: none;
}
</style>
<body>
    
    <div class="quiz-container" id="quiz">
        <div class="quiz-header">
            <h2 id="question">Question Text</h2>
            <ul>
                <li>
                    <input type="radio" name="answer" id="a" class="answer">
                    <label for="a" id="a_text">Answer</label>
                </li>

                <li>
                    <input type="radio" name="answer" id="b" class="answer">
                    <label for="b" id="b_text">Answer</label>
                </li>

                <li>
                    <input type="radio" name="answer" id="c" class="answer">
                    <label for="c" id="c_text">Answer</label>
                </li>

                <li>
                    <input type="radio" name="answer" id="d" class="answer">
                    <label for="d" id="d_text">Answer</label>
                </li>
            </ul>
        </div>

        <button id="submit">Submit</button>

    </div>
    


    <script>
        const quizData = [
    {
        question: "HOW MANY STATES ARE THERE IN INDIA",
        a: "29",
        b: "28",
        c: "27",
        d: "30",
        correct: "a",
    },
    {
        question: "IF ONE NUMBER IS THRICE THE OTHER AND THEIR SUM IS 20, THEN THE NUMBER ARE",
        a: "25,-5",
        b: "11,9",
        c: "5,15",
        d: "10,5",
        correct: "c",
    },
    {
        question: "INDIAN FOOTBALL TEAM WON ITS FIRST GOLD MEDAL IN WHICH ASIAN GAMES",
        a: "1990",
        b: "1950",
        c: "1959",
        d: "1951",
        correct: "d",
    },
    {
        question: "WHAT IS SYMBOL OF GOLD IN MODERN PERIODIC TABLE ",
        a: "Sn",
        b: "Ge",
        c: "Au",
        d: "Ni",
        correct: "c",
    },


];

const quiz= document.getElementById('quiz')
const answerEls = document.querySelectorAll('.answer')
const questionEl = document.getElementById('question')
const a_text = document.getElementById('a_text')
const b_text = document.getElementById('b_text')
const c_text = document.getElementById('c_text')
const d_text = document.getElementById('d_text')
const submitBtn = document.getElementById('submit')
const gameOver = new Audio('java/erro.mp3');


let currentQuiz = 0
let score = 0
//show question
loadQuiz()

function loadQuiz() {

    deselectAnswers()

    const currentQuizData = quizData[currentQuiz]

    questionEl.innerText = currentQuizData.question
    a_text.innerText = currentQuizData.a
    b_text.innerText = currentQuizData.b
    c_text.innerText = currentQuizData.c
    d_text.innerText = currentQuizData.d
}
//end
function deselectAnswers() {
    answerEls.forEach(answerEl => answerEl.checked = false)
}

function getSelected() {
    let answer
    answerEls.forEach(answerEl =>{
        if(answerEl.checked) {
            answer = answerEl.id
        }
    })
    return answer
}


submitBtn.addEventListener('click', () => {
    const answer = getSelected()
    if (answer) {
        if (answer === quizData[currentQuiz].correct) {
            score++
        }

        currentQuiz++

        if (currentQuiz < quizData.length) {
            loadQuiz()
        } else{
            quiz.innerHTML = `
            <h2>You answered ${score}/${quizData.length} questions correctly</h2>
            
            <button onclick="location.reload()">Reload</button>
            `
        }
        if (score > 4) {
            gameOver.play();
        }

        if (score === 4) {
            quiz.innerHTML =`
            <h2>hello sir ${score}/${quizData.length} welcome back</h2>

            <a href='jar'><button id="submit">go</button></a> 
            
            `
        }
         

    }

})
    </script>
</body>
</html>