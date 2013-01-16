<?php
/* @var $this MonitorController */
/* @var $model Monitor */

$this->breadcrumbs=array(
	'Monitors'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Monitor', 'url'=>array('index')),
	array('label'=>'Create Monitor', 'url'=>array('create')),
	array('label'=>'View Monitor', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Monitor', 'url'=>array('admin')),
);
?>

<h1>Update Monitor <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>