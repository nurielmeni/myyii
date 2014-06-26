<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
$this->layout='//layouts/billboard';

?>
<div class="row-fluid myyiiBorder" id="TopRow">
	<div class="span6 myyiiBorder" id="BuildingPictures">
            <div class="row-fluid myyiiBorder" id="LeftTopRow">
                <div id="digiclock"></div>                 
            </div>           
            <div class="row-fluid myyiiBorder" id="LeftBottomRow">
            </div>           
	</div>
	<div class="span6 myyiiBorder" id="WhetherWidget">
            <div class="row-fluid myyiiBorder" id="RightTopRow">   
                <h3>מסכים ממוחשבים: 072-8762233</h3>
            </div>           
            <div class="row-fluid myyiiBorder" id="RightMiddeleRow">
                <div class="span6" id="Billboard">	
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
            </div>           
            <div class="row-fluid myyiiBorder" id="RightBottomRow"> 
                <div class="span8" id="YnetWidget">
                    <div id="ynetNewsScroller" class="sagscroller"></div>
                </div>	
           </div>           
        </div>            
</div>


	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jdigiclock/lib/jquery.jdigiclock.js"></script>

	<script type="text/javascript"> <!-- DOM Ready functions (jdigiclock, 
	    $(document).ready(function() {
	        $('#digiclock').jdigiclock({
	            // Configuration goes here
	            clockImagesPath: 'js/jdigiclock/images/clock/',
                    weatherImagesPath: 'js/jdigiclock/images/weather/',
                    lang: 'he',
                    am_pm: false,
                    weatherLocationCode: 'MEA|IL|IS005|HOLON',
                    weatherMetric: 'C'                             
	        });	  
			
                // Billboard slider
	        $('#banner-fade').bjqs({
                    'showcontrols' : false,
                    'animduration' : '1250', // how fast the animation are
                    'animspeed' : '6500', // the delay between each slide
                    responsive : true
                });      
	    });

	   
	</script>
	
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/sagscroller.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/crossSlide.js"></script>

	<!-- Include the plugin *after* the jQuery library -->
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/bjqs.js"></script>

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
