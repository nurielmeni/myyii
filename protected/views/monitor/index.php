<?php
/* @var $this MonitorController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Monitors',
);

$this->menu=array(
	array('label'=>'Create Monitor', 'url'=>array('create')),
	array('label'=>'Manage Monitor', 'url'=>array('admin')),
);
?>

<h1>Monitors</h1>
<?php if(Yii::app()->user->hasFlash('success')):?>
     <div class="flash-success">
          <?php echo Yii::app()->user->getFlash('success'); ?>
     </div>
<?php endif; ?>
<?php if(Yii::app()->user->hasFlash('error')):?>
     <div class="flash-error">
          <?php echo Yii::app()->user->getFlash('error'); ?>
     </div>
<?php endif; ?>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
