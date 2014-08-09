<?php /* @var $this Controller */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang=<?php echo Yii::app()->language; ?> lang=<?php echo Yii::app()->language; ?>>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content=<?php echo Yii::app()->language; ?> />
        <meta http-equiv="refresh" content="9000; URL=<?php echo YII::app()->createAbsoluteUrl('site/index', array('ID'=>$_GET['screen_id'])); ?>">
    
	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>
<style>

html , body
{ 
    margin: 0; padding: 0; 
}

html 
{ 
    background: url('images/Shabbat_Candles.jpg') no-repeat center center fixed; 
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}


</style>

<body dir="rtl">
	

<div class="container-fluid" id="page">

	<?php echo $content; ?>
	
	<div class="clear"></div>
</div><!-- page -->
</body>
</html>