<?php
/* @var $this ScreenController */
/* @var $data Screen */
?>

<div class="view">
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
    
	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('name')); ?>:</b>
	<?php echo CHtml::encode($data->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('description')); ?>:</b>
	<?php echo CHtml::encode($data->description); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('monitor_id')); ?>:</b>
	<?php echo CHtml::encode($data->monitor->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('yeshuv_id')); ?>:</b>
	<?php echo CHtml::encode($data->getYeshuv()); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('client_id')); ?>:</b>
	<?php echo CHtml::encode($data->client->name); ?>
	<br />

</div>