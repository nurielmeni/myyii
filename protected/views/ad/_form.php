<?php
/* @var $this AdController */
/* @var $model Ad */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
        'id'=>'ad-form',
        'enableAjaxValidation'=>false,
    )); 
    Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/filebrowser.js');
?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'name'); ?>
		<?php echo $form->textField($model,'name',array('size'=>60,'maxlength'=>128)); ?>
		<?php echo $form->error($model,'name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'description'); ?>
		<?php echo $form->textArea($model,'description',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'description'); ?>
	</div>

	<div class="tinymce">
		<?php echo $form->labelEx($model,'html'); ?>
		
        <?php $this->widget('application.extensions.tinymce.ETinyMce',
			array(
				'model'=>$model,
				'attribute'=>'html',
				'editorTemplate'=>'full',
				'htmlOptions'=>array('rows'=>6, 'cols'=>60, 'class'=>'tinymce'),
				'options' => array(
					'theme_advanced_buttons1' => '|,save,jbimages,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect,',
					'theme_advanced_buttons2' => 'cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor,',
					'theme_advanced_buttons3' => 'tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen,',
					'theme_advanced_buttons4' => 'insertlayer,moveforward,movebackward,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,blockquote,pagebreak,|,insertfile,insertimage,',
					'theme_advanced_toolbar_location' => 'top',
					'theme_advanced_toolbar_align' => 'right',
					'theme_advanced_statusbar_location' => 'none',
					'theme_advanced_font_sizes' => "1=10pt,2=12pt,3=16pt,4=22pt,5=28pt,
													6=36pt,7=42pt,8=52pt,9=66pt,10=72pt,11=84pt",
					'file_browser_callback' => 'filebrowser',
				),
				
			)); ?>

		<?php echo $form->error($model,'html'); ?>
	</div>

	

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->