<?php
    /* @var $this SiteController */

    $this->pageTitle=Yii::app()->name . ' - About';
    $this->breadcrumbs=array(
            'About',
    );
    //$this->layout='//layouts/billboard';

    $baseurl = Yii::app()->baseUrl;
    $cs = Yii::app()->getClientScript();
    $cs->registerCoreScript('jquery');
    $cs->registerScriptFile($baseurl.'/js/newsTicker.js', CClientScript::POS_END);
    $cs->registerCssFile($baseurl.'/css/newsTicker.css', 'screen, projection', CClientScript::POS_HEAD);
?>

<ul id="news-ticker"></ul>


<script>
$(document).ready(function() {  
  // URL of the RSS feed            
  parseRSS('http://www.ynet.co.il/Integration/StoryRss2.xml', displayNewsTicker);
  // News Ticker Speed
  setInterval(function(){ tick ($('#news-ticker')) }, 10000);

});

</script>
