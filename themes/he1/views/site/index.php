<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
$this->layout='//layouts/billboard';

?>
    <div class="container-fluid" id="my-container-fluid">
        <div class="row-fluid myyiiBorder" id="TopRow">
        </div>
        
        <div class="row-fluid myyiiBorder" id="MiddleRow">
            <div class="span2 myyiiBorder" id="retroclockbox1"></div>                
            <div class="span4 myyiiBorder" id="weather"></div>
            <div class="span4 myyiiBorder" id="date_time"><p id="date_time_text"></p></div>
        </div>

        <div class="row-fluid myyiiBorder" id="BottomRow">            
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
	    });	   
	</script>
	
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/sagscroller.js"></script>

	<!-- Include the plugin *after* the jQuery library -->
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/bjqs.js"></script>

    	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/date_time.js"></script>
        

	<link type="text/css" rel="Stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/css/jquery.flipcountdown.css" charset="UTF-8" />        
        <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.flipcountdown.js"></script>
        
        <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.zweatherfeed.min.js"></script>
           

	<!-- Include the basic styles -->
	<link href='http://fonts.googleapis.com/css?family=Alef' rel='stylesheet' type='text/css'>
	<link type="text/css" rel="Stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/css/bjqs.css" charset="UTF-8" />

	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	<script type="text/javascript"> <!-- Ynet Widget
		var ynetNewsScroller=new sagscroller({
			id:'ynetNewsScroller',
			mode: 'auto',
			rssdata:{
				feeds: [
					['Ynet', 'http://www.ynet.co.il/Integration/StoryRss2.xml']
				],
				linktarget: '_new',
				displayoptions: 'description',
				groupbylabel: false,
				entries: 100 //<--no comma following last option
			},
			refreshsecs: 360,
			pause: 10000,
			animatespeed: 3500 //<--no comma following last option
		});
	</script>