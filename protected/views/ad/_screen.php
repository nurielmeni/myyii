<?php
/* @var $this AdController */
/* @var $data Ad */
?>

<div class="view">
    <b><?php echo CHtml::encode($data->getAttributeLabel('screen_id')); ?>:</b>
    <?php echo CHtml::link($data->screen_id, array('screen/view', 'id' => $data->screen_id)); ?>
    <br />
 </div>