<?php
/* @var $this ScreenController */
/* @var $model Screen */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'screen-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'name'); ?>
		<?php echo $form->textArea($model,'name',array('rows'=>1, 'cols'=>50)); ?>
		<?php echo $form->error($model,'name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'address'); ?>
		<?php echo $form->textArea($model,'address',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'address'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'monitor'); ?>
		<?php echo $form->dropDownList($model,'monitor', CHtml::listData(Monitor::model()->findAll(),'id','name')); ?>
		<?php echo $form->error($model,'monitor'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'client'); ?>
		<?php echo $form->dropDownList($model,'client', CHtml::listData(Client::model()->findAll(),'id','name')); ?>
		<?php echo $form->error($model,'client'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'ipadd'); ?>
		<?php echo $form->textArea($model,'ipadd',array('rows'=>1, 'cols'=>50)); ?>
		<?php echo $form->error($model,'ipadd'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'contactName'); ?>
		<?php echo $form->textArea($model,'contactName',array('rows'=>1, 'cols'=>50)); ?>
		<?php echo $form->error($model,'contactName'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'contactPhone'); ?>
		<?php echo $form->textArea($model,'contactPhone',array('rows'=>1, 'cols'=>50)); ?>
		<?php echo $form->error($model,'contactPhone'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->