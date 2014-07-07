<?php /* @var $this Controller */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang=<?php echo Yii::app()->language; ?> lang=<?php echo Yii::app()->language; ?>>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content=<?php echo Yii::app()->language; ?> />
	<meta http-equiv="refresh" content="1800">
    
    <!-- Bootstrap -->
    <?php Yii::app()->clientScript->registerCoreScript('bootstrap'); ?>	
	<?php Yii::app()->bootstrap->register(); ?>

	

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/mainScreen_1.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css" />
	
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/sagscroller.css" />

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>


<body dir="rtl">
	

<div class="container-fluid" id="page">

	<?php echo $content; ?>
	
	<div class="clear"></div>
</div><!-- page -->
</body>
</html>