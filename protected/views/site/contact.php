<?php
/* @var $this SiteController */
/* @var $model ContactForm */
/* @var $form CActiveForm */

$this->pageTitle=Yii::app()->name . ' - Contact Us';
$this->breadcrumbs=array(
	'Contact',
);
?>

<h1>Contact Us</h1>

<?php if(Yii::app()->user->hasFlash('contact')): ?>

<div class="flash-success">
	<?php echo Yii::app()->user->getFlash('contact'); ?>
</div>

<?php else: ?>

<p>
If you have business inquiries or other questions, please fill out the following form to contact us. Thank you.
</p>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'contact-form',
	'enableClientValidation'=>true,
	'clientOptions'=>array(
		'validateOnSubmit'=>true,
	),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'name'); ?>
		<?php echo $form->textField($model,'name'); ?>
		<?php echo $form->error($model,'name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'email'); ?>
		<?php echo $form->textField($model,'email'); ?>
		<?php echo $form->error($model,'email'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'subject'); ?>
		<?php echo $form->textField($model,'subject',array('size'=>60,'maxlength'=>128)); ?>
		<?php echo $form->error($model,'subject'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'body'); ?>
		<?php echo $form->textArea($model,'body',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'body'); ?>
	</div>

	<?php if(CCaptcha::checkRequirements()): ?>
	<div class="row">
		<?php echo $form->labelEx($model,'verifyCode'); ?>
		<div>
		<?php $this->widget('CCaptcha'); ?>
		<?php echo $form->textField($model,'verifyCode'); ?>
		</div>
		<div class="hint">Please enter the letters as they are shown in the image above.
		<br/>Letters are not case-sensitive.</div>
		<?php echo $form->error($model,'verifyCode'); ?>
	</div>
	<?php endif; ?>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Submit'); ?>
	</div>

<?php $this->endWidget(); ?>
<?php //you can use any desired dir to install this extension
 $this->widget('application.extensions.elrtef.elRTE', array( 
        'model' => $model,
        'attribute' => 'text',
        //'name' => 'text',
        //'htmlOptions' => array('height' => '600'),
        'options' => array(
                'doctype'=>'js:\'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\'',
                'cssClass' => 'el-rte',
                'cssfiles' => array('css/elrte-inner.css'),
                'absoluteURLs'=>true,
                'allowSource' => true,
                'lang' => 'ru',
                'styleWithCss'=>'',
                'height' => 400,
                'fmAllow'=>true, //if you want to use Media-manager
                'fmOpen'=>'js:function(callback) {$("<div id=\"elfinder\" />").elfinder(%elfopts%);}',//here used placeholder for settings
                'toolbar' => 'maxi',
        ),
        'elfoptions' => array( //elfinder options
            'url'=>'auto',  //if set auto - script tries to connect with native connector
            'passkey'=>'mypass', //here passkey from first connector`s line
            'lang'=>'ru',
            'dialog'=>array('width'=>'900','modal'=>true,'title'=>'Media Manager'),
            'closeOnEditorCallback'=>true,
            'editorCallback'=>'js:callback'
        ),
        )
);
?>
</div><!-- form -->

<?php endif; ?>