<div class="chat-container">
    <img src="{{asset('image.png')}}" alt="Avatar">
    <p>Hello. How are you today?</p>
    <span class="time-right">11:00</span>
</div>

<div class="chat-container darker">
    <img src="{{asset('male.png')}}" alt="Avatar" class="right">
    <p>Hey! I'm fine. Thanks for asking!</p>
    <span class="time-left">11:01</span>
</div>

<div class="chat-container">
    <img src="{{asset('image.png')}}" alt="Avatar">
    <p>Sweet! So, what do you wanna do today?</p>
    <span class="time-right">11:02</span>
</div>

<div class="chat-container darker">
    <img src="{{asset('male.png')}}" alt="Avatar" class="right">
    <p>Nah, I dunno. Play soccer.. or learn more coding perhaps?</p>
    <span class="time-left">11:05</span>
</div>
<div class="chat-container">
    <img src="{{asset('image.png')}}" alt="Avatar">
    <p>I wanna come over to your house pls</p>
    <span class="time-right">11:02</span>
</div>
<div class="chat-container darker">
    <img src="{{asset('male.png')}}" alt="Avatar" class="right">
    <p>Hmmn, what do you wanna do when you come over?</p>
    <span class="time-left">11:05</span>
</div>
<style>
    /* Chat chat-containers */
    .chat-container {
        border: 2px solid #dedede;
        background-color: #f1f1f1;
        border-radius: 5px;
        padding: 10px;
        margin: 10px 0;
    }

    /* Darker chat chat-container */
    .darker {
        border-color: #ccc;
        background-color: #ddd;
    }

    /* Clear floats */
    .chat-container::after {
        content: "";
        clear: both;
        display: table;
    }

    /* Style images */
    .chat-container img {
        float: left;
        max-width: 60px;
        width: 100%;
        margin-right: 20px;
        border-radius: 50%;
    }

    /* Style the right image */
    .chat-container img.right {
        float: right;
        margin-left: 20px;
        margin-right:0;
    }

    /* Style time text */
    .time-right {
        float: right;
        color: #aaa;
    }

    /* Style time text */
    .time-left {
        float: left;
        color: #999;
    }
</style>