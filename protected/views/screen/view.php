<?php
/* @var $this ScreenController */
/* @var $model Screen */

$this->breadcrumbs=array(
	'Screens'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List Screen', 'url'=>array('index')),
	array('label'=>'Create Screen', 'url'=>array('create')),
	array('label'=>'Update Screen', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Screen', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Screen', 'url'=>array('admin')),
);
?>

<h1>View Screen #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'address',
		'monitor',
		'client',
		'ipadd',
		'contactName',
		'contactPhone',
	),
)); ?>
