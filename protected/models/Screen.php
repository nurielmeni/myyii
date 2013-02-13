<?php

/**
 * This is the model class for table "tbl_screen".
 *
 * The followings are the available columns in table 'tbl_screen':
 * @property integer $id
 * @property string $name
 * @property string $description
 * @property integer $yeshuv_id
 * @property integer $monitor_id
 * @property integer $client_id
 * @property string $create_time
 * @property integer $create_user_id
 * @property string $update_time
 * @property integer $update_user_id
 *
 * The followings are the available model relations:
 * @property Client $client
 * @property Monitor $monitor
 * @property Ad[] $tblAds
 */
class Screen extends BillboardActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Screen the static model class
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
		return 'tbl_screen';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('name', 'required'),
			array('monitor_id, client_id, $yeshuv_id', 'numerical', 'integerOnly'=>true),
			array('name', 'length', 'max'=>128),
			array('description', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, name, description, monitor_id, client_id, $yeshuv_id, create_time, create_user_id, update_time, update_user_id', 'safe', 'on'=>'search'),
                        array('name, monitor_id, client_id', 'required')
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
			'client' => array(self::BELONGS_TO, 'Client', 'client_id'),
			'monitor' => array(self::BELONGS_TO, 'Monitor', 'monitor_id'),
			'tblAds' => array(self::MANY_MANY, 'Ad', 'tbl_screen_ad_assignment(screen_id, ad_id)'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'מספר',
			'name' => 'שם',
			'description' => 'תיאור',
			'monitor_id' => 'מסך',
			'client_id' => 'מחשב',
                        '$yeshuv_id' => 'ישוב',
                        'create_time' => 'Create Time',
			'create_user_id' => 'Create User',
			'update_time' => 'Update Time',
			'update_user_id' => 'Update User',
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
		$criteria->compare('name',$this->name,true);
		$criteria->compare('description',$this->description,true);
		$criteria->compare('monitor_id',$this->monitor_id);
		$criteria->compare('client_id',$this->client_id);
		$criteria->compare('yeshuv_id',$this->yeshuv_id);
		$criteria->compare('create_time',$this->create_time,true);
		$criteria->compare('create_user_id',$this->create_user_id);
		$criteria->compare('update_time',$this->update_time,true);
		$criteria->compare('update_user_id',$this->update_user_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
    
    /**
     * Retrievs the data for the Monitors combobox
     * @return List of Monitors from Monitors.
     */
    public function getMonitors()
    {       
        return CHtml::listData(Monitor::model()->findAll(), 'id', 'name');
    }
 
     /**
     * Retrievs the data for the Monitors combobox
     * @return List of Monitors from Monitors.
     */
    public function getClients()
    {       
        return CHtml::listData(Client::model()->findAll(), 'id', 'name');
    }
}