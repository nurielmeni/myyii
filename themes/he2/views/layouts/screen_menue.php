<?php /* @var $this Controller */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang=<?php echo Yii::app()->language; ?> lang=<?php echo Yii::app()->language; ?>>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content=<?php echo Yii::app()->language; ?> />
    
    <!-- Bootstrap -->
    <?php Yii::app()->clientScript->registerCoreScript('bootstrap'); ?>	
	<?php Yii::app()->bootstrap->register(); ?>

	<!-- blueprint CSS framework 
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print" />
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection" />
	<![endif]-->

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/mainScreen.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/js/jdigiclock/css/jquery.jdigiclock.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/sagscroller.css" />

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>


<body dir="rtl">
	<div id="mainmenu">
		<?php $this->widget('zii.widgets.CMenu',array(
			'items'=>array(
				array('label'=>'בית', 'url'=>array('/site/index')),
				array('label'=>'מסכים', 'url'=>array('/monitor'),'template'=>'| {menu}'),
				array('label'=>'מחשבים', 'url'=>array('/client')),
				array('label'=>'לוחות', 'url'=>array('/screen')),
				array('label'=>'משתמשים', 'url'=>array('/user')),
				array('label'=>'פרסומות', 'url'=>array('/ad')),
				array('label'=>'אודות', 'url'=>array('/site/page', 'view'=>'about'),'template'=>'| {menu}'),
				array('label'=>'צור קשר', 'url'=>array('/site/contact')),
				array('label'=>'כניסה', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
				array('label'=>'יציאה ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
			),
		)); ?>
	</div><!-- mainmenu -->

<div class="container-fluid" id="page">

	<?php echo $content; ?>
	
	<div class="clear"></div>
</div><!-- page -->
</body>
</html>
