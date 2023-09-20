<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <section class="wrap-sec">

        <img src="https://www.murach.com/images/logo.jpg" alt="">
        <p class="title">Survey</p>
        <p>If you have a momment, we'd appreciate it if you would fill out this survey</p>
        <form action="EmailListServlet" method="post">
        	<input type="hidden" name="action" value="add">
            <p class="title">Your information:</p>

            <div class="wrap-input">
                <p>First Name</p>
                <input type="text" name="firstName">
            </div>
            <div class="wrap-input">
                <p>Last Name</p>
                <input type="text" name="lastName">
            </div>
            <div class="wrap-input">
                <p>Email</p>
                <input type="text" name="email">
            </div>
            <div class="wrap-input">
                <p>Date of Birth</p>
                <input type="date" name="dOB">
            </div>
            <p class="title">How did you hear about us ?</p>
            <div class="wrap-raito">
                <input type="radio" id="search" name="inputRaito" value="search">
                <label for="search">Search Engine</label>
                <input type="radio" id="word" name="inputRaito" value="CSS">
                <label for="word">Word of mounth</label>
                <input type="radio" id="social" name="inputRaito" value="JavaScript">
                <label for="social">Social Media</label>
                <input type="radio" id="other" name="inputRaito" value="JavaScript">
                <label for="other">Other</label>
            </div>

            <p class="title">Would you like receive announcements about new CDs and specials offers</p>
            <div class="wrap-select">
                <input type="checkbox" id="like" name="inputCheckBox" value="like">
                <label for="other">YES, I'd like that.</label>
                <br>
                <input type="checkbox" id="send" name="inputCheckBox" value="send">
                <label for="send">YES, please send me email announcements.</label>
            </div>
            <div class="wrap-options">
                <p>Please contact me by:</p>
                <div class="wrap-option-input">
                    <select name="inputOptions" id="options">
                        <option value="emailOrMail">Email or postal mail</option>
                    </select>
                </div>
            </div>
            <button type="submit">Submit</button>
        </form>

    </section>

</body>

</html>