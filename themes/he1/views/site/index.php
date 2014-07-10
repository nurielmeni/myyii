<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
$this->layout='//layouts/billboard';

$baseurl = Yii::app()->baseUrl;
$cs = Yii::app()->getClientScript();
$cs->registerScriptFile($baseurl.'/js/bjqs.js', CClientScript::POS_END);
$cs->registerCssFile($baseurl.'/css/bjqs.css', CClientScript::POS_HEAD);

$cs->registerScriptFile($baseurl.'/js/date_time.js', CClientScript::POS_END);
$cs->registerCssFile($baseurl.'/css/bjqs.css', CClientScript::POS_HEAD);

$cs->registerScriptFile($baseurl.'/js/jquery.flipcountdown.js', CClientScript::POS_END);
$cs->registerCssFile($baseurl.'/css/jquery.flipcountdown.css', CClientScript::POS_HEAD);

$cs->registerScriptFile($baseurl.'/js/jquery.ticker.js', CClientScript::POS_END);
$cs->registerCssFile($baseurl.'/css/ticker-style.css', CClientScript::POS_HEAD);

$cs->registerScriptFile($baseurl.'/js/jquery.zweatherfeed.min.js', CClientScript::POS_END);

$cs->registerScriptFile('https://www.google.com/jsapi', CClientScript::POS_END);


?>
<link href="http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900|Alef:400" rel="stylesheet" type="text/css">


<div class="container-fluid" id="my-container-fluid">
    <div class="row-fluid myyiiBorder" id="TopRow">
    </div>

    <div class="row-fluid myyiiBorder" id="MiddleRow">
        <div class="span2 myyiiBorder" id="retroclockbox1"></div>                
        <div class="span4 myyiiBorder" id="weather"></div>
        <div class="span4 myyiiBorder" id="date_time"><p id="date_time_text"></p></div>
    </div>

    <div class="row-fluid myyiiBorder" id="BottomRow">     
        <div id="js-news-ynet"></div>
    </div>
</div>
	

<script type="text/javascript"> <!-- DOM Ready functions
    $(document).ready(function() {
        // Billboard slider
        $('#banner-fade').bjqs({
            'showcontrols' : false,
            'animduration' : '1250', // how fast the animation are
            'animspeed' : '6500', // the delay between each slide
            responsive : true
        });      

        // Date and Time

        date_time('date_time_text');
        //clock = $('.flip-clock').FlipClock({
        //    clockFace: 'TwentyFourHourClock'
        //});

        $("#retroclockbox1").flipcountdown({
                size:"md",
                am:false,
                showSecond:false,
                speedFlip:80,
                time:function(){return new Date();}
        });

        $('#weather').weatherfeed(['ISXX0026'],{
            unit: 'c',
            image: true,
            country: false,
            highlow: true,
            wind: false,
            humidity: true,
            visibility: false,
            sunrise: false,
            sunset: false,
            forecast: false,
            link: false
        });

        $('#js-news-ynet').ticker({
            //speed: 0.10,           // The speed of the reveal
            ajaxFeed: true,       // Populate jQuery News Ticker via a feed
            feedUrl: 'http://www.ynet.co.il/Integration/StoryRss2.xml',        // The URL of the feed
                                   // MUST BE ON THE SAME DOMAIN AS THE TICKER
            feedType: 'xml',       // Currently only XML
            htmlFeed: false,        // Populate jQuery News Ticker via HTML
            //debugMode: false,       // Show some helpful errors in the console or as alerts
                                   // SHOULD BE SET TO FALSE FOR PRODUCTION SITES!
            //controls: false,        // Whether or not to show the jQuery News Ticker controls
            //titleText: 'Ynet',   // To remove the title set this to an empty String
            //displayType: 'reveal', // Animation type - current options are 'reveal' or 'fade'
            //direction: 'rtl',      // Ticker direction - current options are 'ltr' or 'rtl'
            //pauseOnItems: 2000,    // The pause on a news item before being replaced
            //fadeInSpeed: 600,      // Speed of fade in animation
            //fadeOutSpeed: 300      // Speed of fade out animation
        });
    });	   
</script>