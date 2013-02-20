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
		<?php echo $form->textField($model,'name',array('size'=>60,'maxlength'=>128)); ?>
		<?php echo $form->error($model,'name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'description'); ?>
		<?php echo $form->textArea($model,'description',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'description'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'monitor_id'); ?>
		<?php echo $form->dropDownList($model, 'monitor_id', $model->getMonitors()) ?>
		<?php echo $form->error($model,'monitor_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'client_id'); ?>
		<?php echo $form->dropDownList($model, 'client_id', $model->getClients()) ?>
		<?php echo $form->error($model,'client_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'yeshuv_id'); ?>
		<?php echo $form->dropDownList($model, 'yeshuv_id', $model->getYeshuvs()) ?>
        <?php /*$this->widget('zii.widgets.jui.CJuiAutoComplete',array(
                    'name'=>'name_heb',
                    'value'=>$model->yeshuv_id,
                    'source'=>Yii::app()->baseUrl.'/screen/getYeshuvs',
                    // additional javascript options for the autocomplete plugin
                    'options'=>array(
                        'minLength'=>'1',
                        'showAnim'=>'fold',
                        //focus option will tell what is displayed in field during the selection
                        'focus'=> 'js:function( event, ui ) {
                            $( "#name_heb" ).val( ui.item.postalcode );
                            return false;
                        }',
                        //select function will tell where go each field
                        'select'=>'js:function( event, ui ) {
                            $( "#name_heb" ).val( ui.item.name_heb );
                            $( "#id" ).val(ui.item.id);
                            return false;
                        }'
                            ),
                            'htmlOptions'=>array(
                         ),
            ));
            Yii::app()->clientScript->registerScript('input', '
                $("#name_heb").data("autocomplete")._renderItem = function( ul, item ) {
                return $( "<li></li>" )
                .data( "item.autocomplete", item )
                .append( "<a>"+ item.name_heb+"</a>")
                .appendTo( ul );
                };');*/?>
		<?php echo $form->error($model,'yeshuv_id'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->