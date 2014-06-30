<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
$this->layout='//layouts/billboard';

?>

    <div class="row-fluid" id="TopRow">
	<div class="span6 myyiiBorder" id="RightColumn">
            <div id="date_time"></div>
            <div>
                <a href="http://www.accuweather.com/he/il/bat-yam/212477/weather-forecast/212477" class="aw-widget-legal">
                </a><div id="awcc1403769386036" class="aw-widget-current"  data-locationkey="" data-unit="c" data-language="he" data-useip="true" data-uid="awcc1403769386036"></div><script type="text/javascript" src="http://oap.accuweather.com/launch.js"></script>
            </div>	
            <div class="myyiiBorder" id="Adds1">
                <iframe id="html5d8deb0eec9fed3f2af208bd31b6b834104c796bd0fce" src="banner/d8deb0eec9fed3f2af208bd31b6b834104c796bd0fce/d8deb0eec9fed3f2af208bd31b6b834104c796bd0fce.html" width="100%" height="460" frameborder="0" scrolling="no" allowTransparency="true"></iframe>
             </div>	
 	</div>
	<div class="span6 myyiiBorder" id="LeftColumn">
            <div class="myyiiBorder" id="Logo">
                <img src="<?php echo Yii::app()->baseUrl.'/images/Logo.PNG'; ?>" />
            </div>	
            <div class="myyiiBorder" id="Billboard">
		<div id="banner-fade">
                    <ul class="bjqs" dir="rtl">                
                        <?php
                        foreach ($model as $ad)
                        {
                          echo CHtml::openTag('li');
                          echo CHtml::decode($ad->html);
                          echo CHtml::closeTag('li');
                        }
                        ?>
                    </ul>
		</div>
            </div>	
            <div class="myyiiBorder" id="YnetWidget">
                    <div id="ynetNewsScroller" class="sagscroller"></div>
            </div>	
    </div>

	
	<script type="text/javascript"> <!-- DOM Ready functions (jdigiclock, 
	    $(document).ready(function() {
	        // Billboard slider
	        $('#banner-fade').bjqs({
                    'showcontrols' : false,
                    'animduration' : '1250', // how fast the animation are
                    'animspeed' : '6500', // the delay between each slide
                    responsive : true
                });      
                
                // Date and Time
                date_time('date_time');
	    });	   
	</script>
	
    <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/sagscroller.js"></script>

    <!-- Include the plugin *after* the jQuery library -->
    <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/bjqs.js"></script>
    
    <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/date_time.js"></script>

    <!-- Include the basic styles -->
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