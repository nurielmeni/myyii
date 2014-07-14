<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
$this->layout='//layouts/billboard';

$baseurl = Yii::app()->baseUrl;
$cs = Yii::app()->getClientScript();
$cs->registerScriptFile('https://www.google.com/jsapi', CClientScript::POS_END);
$cs->registerScriptFile($baseurl.'/js/bjqs.js', CClientScript::POS_END);
$cs->registerCssFile($baseurl.'/css/bjqs.css', 'screen, projection', CClientScript::POS_HEAD);

$cs->registerScriptFile($baseurl.'/js/date_time.js', CClientScript::POS_END);

$cs->registerCssFile($baseurl.'/css/sagscroller.css', 'screen, projection', CClientScript::POS_HEAD);
$cs->registerScriptFile($baseurl.'/js/sagscroller.js', CClientScript::POS_END);
$cs->registerScriptFile($baseurl.'/js/ynetScroller.js', CClientScript::POS_END);


$cs->registerScriptFile($baseurl.'/js/jquery.flipcountdown.js', CClientScript::POS_END);
$cs->registerCssFile($baseurl.'/css/jquery.flipcountdown.css', 'screen, projection', CClientScript::POS_HEAD);

$cs->registerScriptFile($baseurl.'/js/jquery.zweatherfeed.min.js', CClientScript::POS_END);

$cs->registerScriptFile($baseurl.'/js/newsTicker.js', CClientScript::POS_END);
$cs->registerCssFile($baseurl.'/css/newsTicker.css', 'screen, projection', CClientScript::POS_HEAD);


$cs->registerCssFile('http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900|Alef:400', 'screen, projection', CClientScript::POS_HEAD);

$cs->registerScript('helpers', '                                                           
        yii = {                                                                                                     
            urls: {                                                       
                base: '.CJSON::encode(Yii::app()->baseUrl).',
                proxy: '.CJSON::encode(Yii::app()->baseUrl).'+"/proxy/proxy.php?url="'.'
            }                                                                                                       
        };                                                                                                          
    ', CClientScript::POS_HEAD);
?>

<div class="container-fluid" id="my-container-fluid">
    <div class="row-fluid myyiiBorder" id="BottomRow"> 
        <div class="span6"></div>
        <div class="span6" id="address"><?php echo $screen->name.', '.$yeshuv ?></div>
    </div>
    
    <div class="row-fluid myyiiBorder" id="TopRow">
	<div class="span6 myyiiBorder" id="RightColumn">
            <div class="row-fluid" id="Commertial">
                <div class="myyiiBorder" id="Adds1">
                    <iframe id="html138c0b817249c26f1f31676035baa326e40309acb302" src="banner/138c0b817249c26f1f31676035baa326e40309acb302/138c0b817249c26f1f31676035baa326e40309acb302.html" width="100%" height="878" frameborder="0" scrolling="no" allowTransparency="true"></iframe>
                </div>	
            </div>           
        </div>
	<div class="span5 myyiiBorder" id="LeftColumn">
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
    </div>

    <div class="row-fluid myyiiBorder" id="MiddleRow">
        <div class="span2 myyiiBorder" id="retroclockbox1"></div>                
        <div class="span4 myyiiBorder" id="weather"></div>
        <div class="span6 myyiiBorder" id="YnetWidget">
            <div id="ynetNewsScroller" class="sagscroller"></div>
        </div>
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
        //date_time('date_time_text');
 
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