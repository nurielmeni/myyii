<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
$screen = Yii::app()->request->getParam('screenID', '1');
echo $screen;
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
	<div class="span2" id="Adds1">
	</div>
	<div class="span2" id="Adds2">
	</div>
	<div class="span8" id="Billboard">	
		<div id="banner-fade">
    		<ul class="bjqs" dir="rtl">
		        <li>
					<h1>����� 1</h1><!-- Any content you like -->
					
					<h2>������ ����� ����.</h2>
					<h2>������ ������ �� ����� ���� ���� ����, ���� 2013</h2>
					<h2>������ ��� ����.</h2>
					<h2>����� ����� ������� ������.</h2>
					<h2>�� ������ �� ������ ����� ������ 3 �� 16.</h2>
					<h4>�����, ���� ����</h4>
				</li>
		        <li>
					<h1>����� 2</h1><!-- Any content you like -->
					
					<h2>������� ����.</h2>
					<h2>���� ������ ������ �� ����� ��</h2>
					<h2>�� ����� �� �� ������ ���� �������.</h2>
					<h2>���� ���� ���� ��� ��� !!!</h2>
					<h4>�����, ���� ����</h4>
				</li>
				<li>
					<h1>����� 3</h1><!-- Any content you like -->
					
					<h2>������ ����� ����.</h2>
					<h2>���� ������ ���� ������ ������ ����� ���� ����� ����:</h2>
					<h2>�������, �����, �������, ������� ���...</h2>
					<h2>��� ������ ��� ��� �'</h2>
					<h2>�� ������ �� ������ ��� ����.</h2>
					<h4>�����, ���� ����</h4>
				</li>
				<li>
					<h1>����� 4</h1><!-- Any content you like -->
					
					<h2>���� �����: ���� ��� ����� ������</h2>
					
					<h2>�����: 08-9233033</h2>
				</li>
		    </ul>
		</div>	
	</div>	
</div>
<div class="row-fluid" id="BottomRow">
	<div class="span4" id="Adds3">
	</div>
	<div class="span8" id="YnetWidget">
		<div id="ynetNewsScroller" class="sagscroller"></div>
	</div>	
</div>
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/css/jdigiclock/lib/jquery.jdigiclock.js"></script>

	<script type="text/javascript"> <!-- DOM Ready functions (jdigiclock, 
	    $(document).ready(function() {
	        $('#digiclock').jdigiclock({
	            // Configuration goes here
	            clockImagesPath: 'css/jdigiclock/images/clock/',
                weatherImagesPath: 'css/jdigiclock/images/weather/',
                lang: 'he',
                am_pm: false,
                //weatherLocationCode: 'MEA|IL|IS005|HOLON',
                weatherMetric: 'C'                             
	        });	  
			
			// Billboard slider
	        $('#banner-fade').bjqs({
				'showcontrols' : false,
				'animduration' : '950', // how fast the animation are
				'animspeed' : '10000', // the delay between each slide
		        responsive : true
		    });      
	    });

	    /* The function scroll will scroll the selected element
		var i = 0
	    var speed = 1;
	    function scroll() {
	        i = i + speed
	        var div = document.getElementById("rssincl-box-524105")
	        div.scrollTop = i
	        if (i > div.scrollHeight - 80) {
	            i = 0 
	         }
	         t1 = setTimeout("scroll()", 80);
	    }
	    scroll()
		*/
	</script>
	
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/css/sagscroller.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/css/crossSlide.js"></script>

	<!-- Include the plugin *after* the jQuery library -->
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/css/bjqs.js"></script>

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
			refreshsecs: 60,
			pause: 7600,
			animatespeed: 2500 //<--no comma following last option
		});

	</script>
	<script type="text/javascript"> <!-- Ken Burner Effect
		$('#crossSlide').crossSlide({
			fade: 1
			}, [
			  {
				src:  'images/1.jpg',
				alt:  'Sand Castle',
				from: '100% 80% 1x',
				to:   '100% 0% 1.7x',
				time: 30
			  }, {
				src:  'images/2.jpg',
				alt:  'Sunflower',
				from: 'top left',
				to:   'bottom right 1.5x',
				time: 30
			  }, {
				src:  'images/3.jpg',
				alt:  'Flip Flops',
				from: '100% 80% 1.5x',
				to:   '80% 0% 1.1x',
				time: 30
			  }, {
				src:  'images/4.jpg',
				alt:  'Rubber Ring',
				from: '100% 50%',
				to:   '30% 50% 1.5x',
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
				time: 30
			  },{
				src:  'images/9.jpg',
				alt:  'Sand Castle',
				from: '100% 80% 1x',
				to:   '100% 0% 1.7x',
				time: 30
			  }, {
				src:  'images/10.jpg',
				alt:  'Sunflower',
				from: 'top left',
				to:   'bottom right 1.5x',
				time: 30
			  }, {
				src:  'images/11.jpg',
				alt:  'Flip Flops',
				from: '100% 80% 1.5x',
				to:   '80% 0% 1.1x',
				time: 30
			  }, {
				src:  'images/12.jpg',
				alt:  'Rubber Ring',
				from: '100% 50%',
				to:   '30% 50% 1.5x',
				time: 30
			  }, {
				src:  'images/13.jpg',
				alt:  'Rubber Ring',
				from: '100% 50%',
				to:   '30% 50% 1.5x',
				time: 30
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

