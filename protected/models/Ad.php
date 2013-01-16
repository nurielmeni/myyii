<?php

/**
 * This is the model class for table "ad".
 *
 * The followings are the available columns in table 'ad':
 * @property integer $id
 * @property integer $screen_id
 * @property string $div_id
 * @property string $tinymce
 * @property integer $position
 */
class Ad extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Ad the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
	
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'ad';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('screen_id, position', 'numerical', 'integerOnly'=>true),
			array('div_id, tinymce', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, screen_id, div_id, tinymce, position', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'screen_id' => 'Screen',
			'div_id' => 'Div',
			'tinymce' => 'Tinymce',
			'position' => 'Position',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('screen_id',$this->screen_id);
		$criteria->compare('div_id',$this->div_id,true);
		$criteria->compare('tinymce',$this->tinymce,true);
		$criteria->compare('position',$this->position);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}