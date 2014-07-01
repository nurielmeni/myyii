<?php
class ScreenAdAssignmentTest extends CDbTestCase
{
    public $fixtures=array
    (
        'screens'=>'Screen',
        'ads'=>'Ad',
    );
  
    public function testScreen1Ads()
    {
        $screen = $this->screens('screen1');
        $this->assertTrue($screen instanceof Screen);
        $this->assertEquals($screen->id, 1);
        $ad = $screen->ads;
        $this->assertEquals(count($screen->ads), 2);
        $this->assertEquals($ad[0]->name, "ad1");
        $this->assertEquals($ad[1]->name, "ad3");
        $this->assertTrue($ad[0] instanceof Ad);
    }
    
    public function testScreen2Ads()
    {
        $screen = $this->screens('screen2');
        $this->assertTrue($screen instanceof Screen);
        $this->assertEquals($screen->id, 2);
        $ad = $screen->ads;
        $this->assertEquals(count($screen->ads), 1);
        $this->assertEquals($ad[0]->name, "ad1");
        $this->assertTrue($ad[0] instanceof Ad);
    }
    
           
}
