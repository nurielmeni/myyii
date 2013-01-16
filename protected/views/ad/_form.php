<?php
/* @var $this AdController */
/* @var $model Ad */
/* @var $form CActiveForm */
?>
<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/filebrowser.js"></script>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'ad-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'screen_id'); ?>
		<?php echo $form->textField($model,'screen_id'); ?>
		<?php echo $form->error($model,'screen_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'div_id'); ?>
		<?php echo $form->textArea($model,'div_id',array('rows'=>1, 'cols'=>50)); ?>
		<?php echo $form->error($model,'div_id'); ?>
	</div>

	<!--
	<div class="row">
		<?php //echo $form->labelEx($model,'tinymce'); ?>
		<?php //echo $form->textField($model,'tinymce'); ?>
		<?php //echo $form->error($model,'tinymce'); ?>
	</div>
	-->
	
	<div class="tinymce">
		<?php echo $form->labelEx($model,'tinymce'); ?>
		<?php $this->widget('application.extensions.tinymce.ETinyMce',
			array(
				'model'=>$model,
				'attribute'=>'tinymce',
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
		
		<?php echo $form->error($model,'tinymce'); ?>
	</div>

	
	
	<div class="row">
		<?php echo $form->labelEx($model,'position'); ?>
		<?php echo $form->textField($model,'position'); ?>
		<?php echo $form->error($model,'position'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->