<?php
/* @var $this ScreenController */
/* @var $model Screen */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('name')); ?>:</b>
	<?php echo CHtml::encode($data->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('address')); ?>:</b>
	<?php echo CHtml::encode($data->address); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('monitor')); ?>:</b>
	<?php echo CHtml::encode($data->monitors->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('client')); ?>:</b>
	<?php echo CHtml::encode($data->clients->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ipadd')); ?>:</b>
	<?php echo CHtml::encode($data->ipadd); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('contactName')); ?>:</b>
	<?php echo CHtml::encode($data->contactName); ?>
	<br />

	
	<b><?php echo CHtml::encode($data->getAttributeLabel('contactPhone')); ?>:</b>
	<?php echo CHtml::encode($data->contactPhone); ?>
	<br />

	 

</div>