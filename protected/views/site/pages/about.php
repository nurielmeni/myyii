<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name . ' - About';
$this->breadcrumbs=array(
	'About',
);
$this->layout='//layouts/billboard';
?>
<link type="text/css" rel="Stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/css/jquery.flipcountdown.css" charset="UTF-8" />

<h1>About</h1>
<div id="retroclockbox1"></div>
<p>This is a "static" page. You may change the content of this page
by updating the file <code><?php echo __FILE__; ?></code>.</p>

<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.flipcountdown.js"></script>
<script type="text/javascript"> <!-- DOM Ready functions
	    $(document).ready(function() {	        
                $("#retroclockbox1").flipcountdown({
                        size:"lg"
                });
            });	   
	</script>
        
        
        
        
	    
