<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
$this->layout='//layouts/billboard';

?>
    <div class="container-fluid" id="my-container-fluid">
        <div class="row-fluid myyiiBorder" id="TopRow">
            <div class="" id="weather">
                <a href="http://www.accuweather.com/he/il/tel-aviv/215854/weather-forecast/215854" class="aw-widget-legal">
                <!--
                By accessing and/or using this code snippet, you agree to AccuWeather’s terms and conditions (in English) which can be found at http://www.accuweather.com/en/free-weather-widgets/terms and AccuWeather’s Privacy Statement (in English) which can be found at http://www.accuweather.com/en/privacy.
                -->
                </a><div id="awcc1404389907548" class="aw-widget-current"  data-locationkey="" data-unit="c" data-language="he" data-useip="true" data-uid="awcc1404389907548"></div><script type="text/javascript" src="http://oap.accuweather.com/launch.js"></script>
            </div>
            <div class="" id="date_time"><p id="date_time_text"></p></div>
        </div>

        <div class="row-fluid myyiiBorder" id="MiddleRow">
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
	    });	   
	</script>
	
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/sagscroller.js"></script>

	<!-- Include the plugin *after* the jQuery library -->
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/bjqs.js"></script>

    	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/date_time.js"></script>

	<!-- Include the basic styles -->
	<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600' rel='stylesheet' type='text/css'>
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