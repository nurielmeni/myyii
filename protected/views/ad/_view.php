<?php
/* @var $this AdController */
/* @var $model Ad */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('screen_id')); ?>:</b>
	<?php echo CHtml::encode($data->screen_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('div_id')); ?>:</b>
	<?php echo CHtml::encode($data->div_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('tinymce')); ?>:</b>
	<?php echo CHtml::encode($data->tinymce); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('position')); ?>:</b>
	<?php echo CHtml::encode($data->position); ?>
	<br />


</div>