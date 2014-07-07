<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
$this->layout='//layouts/billboard';

?>

    <div class="row-fluid" id="TopRow">
        
	<div class="span5 myyiiBorder" id="RightColumn">
            <div class="row-fluid" id="TopRight">
                
                <div class="" id="weather">
                    <a href="http://www.accuweather.com/he/il/tel-aviv/215854/weather-forecast/215854" class="aw-widget-legal">
                    <!--
                    By accessing and/or using this code snippet, you agree to AccuWeather’s terms and conditions (in English) which can be found at http://www.accuweather.com/en/free-weather-widgets/terms and AccuWeather’s Privacy Statement (in English) which can be found at http://www.accuweather.com/en/privacy.
                    -->
                    </a><div id="awcc1404389907548" class="aw-widget-current"  data-locationkey="" data-unit="c" data-language="he" data-useip="true" data-uid="awcc1404389907548"></div><script type="text/javascript" src="http://oap.accuweather.com/launch.js"></script>
                </div>
                <div class="" id="date_time"><p id="date_time_text"></p></div>
            </div>
            <div class="row-fluid" id="Commertial">
                <div class="myyiiBorder" id="Adds1">
                    <iframe id="html138c0b817249c26f1f31676035baa326e40309acb302" src="banner/138c0b817249c26f1f31676035baa326e40309acb302/138c0b817249c26f1f31676035baa326e40309acb302.html" width="100%" height="878" frameborder="0" scrolling="no" allowTransparency="true"></iframe>
                </div>	
            </div>
 	</div>
        
	<div class="span7 myyiiBorder" id="LeftColumn">
            <div class="row-fluid myyiiBorder" id="TopLeft">
                <div class="myyiiBorder Logo">
                    <img src="<?php echo Yii::app()->baseUrl.'/images/Logo.gif'; ?>" />
                </div>                
            </div>
            <div class="row-fluid myyiiBorder" id="Billboard">
                <div class="myyiiBorder" id="billboardTitle">
                    הודעות ועד הבית:  <span><?php echo $screen->name.', '.$yeshuv ?></span>
                </div>
		<div id="banner-fade">
                    <ul class="bjqs" dir="rtl">                
                        <?php
                        foreach ($ads as $ad)
                        {
                          echo CHtml::openTag('li');
                          echo CHtml::decode($ad->html);
                          echo CHtml::closeTag('li');
                        }
                        ?>
                    </ul>
		</div>
            </div>	
            <div class="row-fluid myyiiBorder" id="YnetWidget">
                    <div id="ynetNewsScroller" class="sagscroller"></div>
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