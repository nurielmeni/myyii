<?php
/* @var $this MonitorController */
/* @var $model Monitor */

$this->breadcrumbs=array(
	'Monitors'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List Monitor', 'url'=>array('index')),
	array('label'=>'Create Monitor', 'url'=>array('create')),
	array('label'=>'Update Monitor', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Monitor', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id), 'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Monitor', 'url'=>array('admin')),
);
?>

<h1>View Monitor #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'size',
		'create_time',
		'create_user_id',
		'update_time',
		'update_user_id',
	),
)); ?>
