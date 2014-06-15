<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
$this->layout='//layouts/billboard';

?>
<div class="row-fluid" id="TopRow">
	<div class="span7" id="BuildingPictures">
		<div id="crossSlide"></div>
	</div>
<!--<div class="span4" id="DateTimeWidget">
	</div> -->
	<div class="span5" id="WhetherWidget">
            <div id="digiclock"></div>
 
        </div>

</div>
<div class="row-fluid" id="MiddleRow">
	<div class="span6 myyiiBorder" id="Adds1">
	</div>	
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
<div class="row-fluid" id="BottomRow">
	<div class="span4 myyiiBorder" id="Adds3">
            <h3>מסכים ממוחשבים: 072-8762233</h3>
	</div>
	<div class="span8" id="YnetWidget">
		<div id="ynetNewsScroller" class="sagscroller"></div>
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
	<script type="text/javascript"> <!-- Ken Burner Effect
		$('#crossSlide').crossSlide({
			fade: 2
			}, [
			  {
				src:  'images/1.jpg',
				alt:  'Sand Castle',
				from: '100% 100% 1x',
				to:   '70% 70% 1.7x',
				time: 30
			  }, {
				src:  'images/2.jpg',
				alt:  'Sunflower',
				from: '100% 100% 1x',
				to:   '70% 70% 1.7x',
				time: 30
			  }, {
				src:  'images/3.jpg',
				alt:  'Flip Flops',
				from: '100% 100% 1x',
				to:   '70% 70% 1.7x',
				time: 30
			  }, {
				src:  'images/4.jpg',
				alt:  'Rubber Ring',
				from: '100% 100% 1x',
				to:   '70% 70% 1.7x',
				time: 30
			  },{
				src:  'images/5.jpg',
				alt:  'Sand Castle',
				from: '100% 80% 1x',
				to:   '100% 0% 1.7x',
				time: 30
			  }, {
				src:  'images/6.jpg',
				alt:  'Sunflower',
				from: 'top left',
				to:   'bottom right 1.5x',
				time: 30
			  }, {
				src:  'images/7.jpg',
				alt:  'Flip Flops',
				from: '100% 80% 1.5x',
				to:   '80% 0% 1.1x',
				time: 30
			  }, {
				src:  'images/8.jpg',
				alt:  'Rubber Ring',
				from: '100% 50%',
				to:   '30% 50% 1.5x',
				time: 300
			  },{
				src:  'images/9.jpg',
				alt:  'Sand Castle',
				from: '100% 80% 1x',
				to:   '100% 0% 1.7x',
				time: 300
			  }, {
				src:  'images/10.jpg',
				alt:  'Sunflower',
				from: 'top left',
				to:   'bottom right 1.5x',
				time: 300
			  }
			], function(idx, img, idxOut, imgOut) {
			  if (idxOut == undefined)
			  {
				// starting single image phase, put up caption
				$('div.caption').text(img.alt).animate({ opacity: .7 })
			  }
			  else
			  {
				// starting cross-fade phase, take out caption
				$('div.caption').fadeOut()
			  }
			});
	</script>

