<?php
/* @var $this AdController */
/* @var $data Ad */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('name')); ?>:</b>
	<?php echo CHtml::encode($data->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('description')); ?>:</b>
	<?php echo CHtml::encode($data->description); ?>
	<br />
	  
    <b><?php echo CHtml::encode($data->getAttributeLabel('html')); ?>:</b>
	<?php
        $this->widget('application.extensions.tinymce.ETinyMce',
			array(
				'model'=>$data,
				'attribute'=>'html',
                ))
; ?>

</div>