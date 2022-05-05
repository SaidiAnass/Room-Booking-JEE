<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Ansonika">
    <title>Admin dashboard</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

    <style>
        body {
            color: #000;
            overflow-x: hidden;
            height: 100%;
        }

        .radio {
            display: inline-block;
            border-radius: 0;
            box-sizing: border-box;
            cursor: pointer;
            color: #BDBDBD;
            font-weight: 500;
            -webkit-filter: grayscale(100%);
            -moz-filter: grayscale(100%);
            -o-filter: grayscale(100%);
            -ms-filter: grayscale(100%);
            filter: grayscale(100%);
        }

        .radio:hover {
            box-shadow: 1px 1px 2px 2px rgba(0, 0, 0, 0.1);
        }

        .radio.selected {
            border: 1px solid #F9A825;
            box-shadow: 0px 8px 16px 0px #EEEEEE;
            color: #29B6F6 !important;
            -webkit-filter: grayscale(0%);
            -moz-filter: grayscale(0%);
            -o-filter: grayscale(0%);
            -ms-filter: grayscale(0%);
            filter: grayscale(0%);
        }

        .card-block {
            border: 1px solid #CFD8DC;
            width: 45%;
            margin: 2.5%;
            padding: 20px 25px 15px 25px;
        }

        @media screen and (max-width: 768px) {
            .card-block {
                padding: 20px 20px 0px 20px;
                height: 250px;
            }
        }

        .icon {
            width: 85px;
            height: 100px;
        }

        .image-icon {
            width: 85px;
            height: 100px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 20px;
        }

        select, input, textarea, button {
            padding: 8px 15px 8px 15px;
            border-radius: 0px;
            margin-bottom: 25px;
            margin-top: 2px;
            width: 100%;
            box-sizing: border-box;
            color: #2C3E50;
            background-color: #ECEFF1;
            border: 1px solid #ccc;
            font-size: 16px;
            letter-spacing: 1px;
        }

        select:focus, input:focus, textarea:focus {
            -moz-box-shadow: none !important;
            -webkit-box-shadow: none !important;
            box-shadow: none !important;
            border: 1px solid skyblue !important;
            outline-width: 0;
        }

        button:focus {
            -moz-box-shadow: none !important;
            -webkit-box-shadow: none !important;
            box-shadow: none !important;
            outline-width: 0;
        }

        textarea {
            height: 100px;
        }

        button {
            width: 120px;
            letter-spacing: 2px;
        }

        .fit-image {
            width: 100%;
            object-fit: cover;
        }

    </style>


</head>

<body class="fixed-nav sticky-footer" id="page-top">

<a href="../list.admin">Manage admins</a>
<br />
<br />

<div class="row px-1 radio-group">
    <div class="card-block text-center radio">
        <div class="image-icon">
            <img class="icon icon1" src="https://i.imgur.com/vZxfo9x.png">
        </div>
        <p class="sub-desc">One time paper cleanout</p>
    </div>
    <div class="card-block text-center radio">
        <div class="image-icon">
            <img class="icon icon1 fit-image" src="https://i.imgur.com/HnX40f4.png">
        </div>
        <p class="sub-desc">Shredding service on a regular schedule</p>
    </div>
    <div class="card-block text-center radio">
        <div class="image-icon">
            <img class="icon icon1 fit-image" src="https://i.imgur.com/ynKYPkk.png">
        </div>
        <p class="sub-desc">Hard Drive destruction</p>
    </div>
    <div class="card-block text-center radio">
        <div class="image-icon">
            <img class="icon icon1 fit-image" src="https://i.imgur.com/6qK7u8Q.png">
        </div>
        <p class="sub-desc">Other Material destruction</p>
    </div>
</div>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>
