<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<head>
    <title>Alumni Portal</title>

    <!-- meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">

    <!-- css -->
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/bootstrap-theme.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/main.css')}}">

    <!-- google font -->
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Kreon:300,400,700'>

    <!-- js -->
    <script src="{{asset('js/vendor/modernizr-2.6.2-respond-1.1.0.min.js')}}"></script>
</head>
<body data-spy="scroll" data-target="#navbar" data-offset="120" >
<!--[if lt IE 7]>
<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<div id="menu" class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header visible-xs">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><h2>Alumni Portal</h2></a>
        </div><!-- navbar-header -->
        <div id="navbar" class="navbar-collapse collapse">
            <div class="hidden-xs" id="logo"><a href="#header">
                    <img src="{{asset('mist-logo.png')}}" alt="">
                </a></div>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="{{route('login')}}">Login</a></li>
                <li><a href="{{route('register')}}">Register</a></li>
                <li><a href="#facts"></a></li>
                <li><a href="#story">Our Aim</a></li>
                <li><a href="#chefs">Great Alumnis</a></li>

                <!--fix for scroll spy active menu element-->
                <li style="display:none;"><a href="#header"></a></li>

            </ul>
        </div><!--/.navbar-collapse -->
    </div><!-- container -->
</div><!-- menu -->

<div id="header">
    <div class="bg-overlay"></div>
    <div class="center text-center">
        <div class="banner">
            <h1 class="">Alumni Portal</h1>
        </div>
        <!--<div class="subtitle"><h4>keeping records for safer tomorrow</h4></div>-->
    </div>
    <div class="bottom text-center">
        <a id="scrollDownArrow" href="#"><i class="fa fa-chevron-down"></i></a>
    </div>
</div>
<!-- /#header -->

<div id="story" class="light-wrapper">
    <section class="ss-style-top"></section>
    <div class="container inner">
        <h2 class="section-title text-center">Our Aim</h2>
        <p class="lead main text-center">Bridging the gap between Alumni and Schoo</p>
        <div class="row text-center story">
            <div class="col-sm-4">
                <div class="col-wrapper">
                    <div class="icon-wrapper"> <i class="fa fa-database"></i> </div>
                    <h3>Students Data</h3>
                    <p>Vivamus sagittis lacuson augue laoreet rutrum faucibus dolor auctor. Cras mattis consectetur purus sit amet fermentum ultricies vehicula.</p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="col-wrapper">
                    <div class="icon-wrapper"> <i class="fa  fa-bank"></i> </div>
                    <h3>Alumni Connect</h3>
                    <p>Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient monte nascetur ultricies vehicula. </p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="col-wrapper">
                    <div class="icon-wrapper"> <i class="fa fa-paperclip"></i> </div>
                    <h3>Proper Documentation</h3>
                    <p>Curabitur blandit matti tempus porttitor. Donec id elit non mi porta ut gravida at eget metus. Consectetur adipiscing elit ultricies vehicula.</p>
                </div>
            </div>
        </div>
        <!-- /.services -->
    </div>
    <!-- /.container -->
    <section class="ss-style-bottom"></section>
</div><!-- #story -->


<div id="chefs" class="parallax pricing">
    <div class="container inner">

        <h2 class="section-title text-center">Some Great ALumnis</h2>
        <p class="lead main text-center"></p>

        <div class="row text-center chefs">
            <div class="col-sm-4">
                <div class="col-wrapper">
                    <div class="icon-wrapper">
                        <img src="img/chefs/1.jpg">
                    </div>
                    <h3>Chris Uzor</h3>
                    <p>Chris Uzor is the bla bla bla</p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="col-wrapper">
                    <div class="icon-wrapper">
                        <img src="img/chefs/3.jpg">
                    </div>
                    <h3>Glory Nwaimoh</h3>
                    <p>Glory Nwaimoh is the yen yen yen</p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="col-wrapper">
                    <div class="icon-wrapper">
                        <img src="img/chefs/2.jpg">
                    </div>
                    <h3>Ebube Nwaimoh</h3>
                    <p>Ebube Nwaimoh is the boo boo boo</p>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container -->
</div><!-- /#chefs -->


<footer id="footer" class="dark-wrapper">
    <section class="ss-style-top"></section>
    <div class="container inner">
        <div class="row">
            <div class="col-sm-6">
                &copy; Copyright AlumiPortal
                <br/><i class="fa fa-twitter"></i> <a class="themeBy">@coding_god</a>
            </div>
            <div class="col-sm-6">
                <div class="social-bar">
                    <a href="#" class="fa fa-instagram tooltipped" title=""></a>
                    <a href="#" class="fa fa-youtube-square tooltipped" title=""></a>
                    <a href="#" class="fa fa-facebook-square tooltipped" title=""></a>
                    <a href="#" class="fa fa-pinterest-square tooltipped" title=""></a>
                    <a href="#" class="fa fa-google-plus-square tooltipped" title=""></a>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container -->
</footer>

<script src="{{asset('js/jquery-2.1.3.min.js')}}"></script>
<script src="{{asset('js/jquery.actual.min.js')}}"></script>
<script src="{{asset('js/jquery.scrollTo.min.js')}}"></script>
<script src="{{asset('js/bootstrap.min.js')}}"></script>
<script src="{{asset('js/main.js')}}"></script>
</body>
</html>