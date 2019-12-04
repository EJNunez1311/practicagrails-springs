<!DOCTYPE html>
<html>
<head>
    <title>Student Complaint Form</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
    html, body {
        min-height: 100%;
    }
    body, div, form, input, select, p {
        padding: 0;
        margin: 0;
        outline: none;
        font-family: Roboto, Arial, sans-serif;
        font-size: 14px;
        color: #666;
        line-height: 22px;
    }
    h1 {
        margin: 15px 0;
        font-weight: 400;
    }
    .testbox {
        display: flex;
        justify-content: center;
        align-items: center;
        height: inherit;
        padding: 3px;
    }
    form {
        width: 100%;
        padding: 20px;
        background: #fff;
        box-shadow: 0 2px 5px #ccc;
    }
    input, select, textarea {
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }
    input {
        width: calc(100% - 10px);
        padding: 5px;
    }
    select {
        width: 100%;
        padding: 7px 0;
        background: transparent;
    }
    textarea {
        width: calc(100% - 6px);
    }
    .item {
        position: relative;
        margin: 10px 0;
    }
    .item:hover p, .item:hover i {
        color: #095484;
    }
    input:hover, select:hover, textarea:hover, .preferred-metod label:hover input {
        box-shadow: 0 0 5px 0 #095484;
    }
    .preferred-metod label {
        display: block;
        margin: 5px 0;
    }
    .preferred-metod:hover input {
        box-shadow: none;
    }
    .preferred-metod-item input, .preferred-metod-item span {
        width: auto;
        vertical-align: middle;
    }
    .preferred-metod-item input {
        margin: 0 5px 0 0;
    }
    input[type="date"]::-webkit-inner-spin-button {
        display: none;
    }
    .item i, input[type="date"]::-webkit-calendar-picker-indicator {
        position: absolute;
        font-size: 20px;
        color: #a9a9a9;
    }
    .item i {
        right: 1%;
        top: 30px;
        z-index: 1;
    }
    [type="date"]::-webkit-calendar-picker-indicator {
        right: 0;
        z-index: 2;
        opacity: 0;
        cursor: pointer;
    }
    .btn-block {
        margin-top: 20px;
        text-align: center;
    }
    button {
        width: 150px;
        padding: 10px;
        border: none;
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        border-radius: 5px;
        background-color: #095484;
        font-size: 16px;
        color: #fff;
        cursor: pointer;
    }
    button:hover {
        background-color: #0666a3;
    }
    @media (min-width: 568px) {
        .name-item, .city-item {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .name-item input, .city-item input {
            width: calc(50% - 20px);
        }
        .city-item select {
            width: calc(50% - 8px);
        }
    }
    /* Add a black background color to the top navigation */
    .topnav {
        background-color: #333;
        overflow: hidden;
    }

    /* Style the links inside the navigation bar */
    .topnav a {
        float: left;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
    }

    /* Change the color of links on hover */
    .topnav a:hover {
        background-color: #ddd;
        color: black;
    }

    /* Add a color to the active/current link */
    .topnav a.active {
        background-color: #4CAF50;
        color: white;
    }
    </style>
</head>
<body>
<div class="topnav">
    <a class="active" href="/Barcamp">Home</a>
    <a href="/AdminZone/graphs">Graphs</a>
</div>
</body>
</html>