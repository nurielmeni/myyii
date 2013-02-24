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
				//'editorTemplate'=>'full',
				//'htmlOptions'=>array('rows'=>6, 'cols'=>60, 'class'=>'tinymce'),
				//'options' => array(
					//'theme_advanced_buttons1' => '|,save,jbimages,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect,',
					//'theme_advanced_buttons2' => 'cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor,',
					//'theme_advanced_buttons3' => 'tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen,',
					//'theme_advanced_buttons4' => 'insertlayer,moveforward,movebackward,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,blockquote,pagebreak,|,insertfile,insertimage,',
					//'theme_advanced_toolbar_location' => 'top',
					//'theme_advanced_toolbar_align' => 'right',
					//'theme_advanced_statusbar_location' => 'none',
					//'theme_advanced_font_sizes' => "1=10pt,2=12pt,3=16pt,4=22pt,5=28pt,
					//								6=36pt,7=42pt,8=52pt,9=66pt,10=72pt,11=84pt",
					//'file_browser_callback' => 'filebrowser',
				//),
				
			)); ?>

</div>