<?php
class ScreenTest extends CDbTestCase
{
    public $fixtures=array
    (
        'screens'=>'Screen', 
    );
  
    public function testRead()
    {
        $retrievedScreen = $this->screens('screen1');
        $this->assertTrue($retrievedScreen instanceof Screen);
        $this->assertEquals('Test Screen 1',$retrievedScreen->name);
    }
    
    public function testGetMonitors()
    {
        $monitors = Screen::model()->getMonitors();
        $this->assertTrue(3 === count($monitors));
        $this->assertTrue(is_array($monitors));
        $this->assertTrue(in_array('monitor1', $monitors));
        $this->assertFalse(in_array('monitor4', $monitors));
    }
 
    public function testGetClients()
    {
        $clients = Screen::model()->getClients();
        $this->assertTrue(3 === count($clients));
        $this->assertTrue(is_array($clients));
        $this->assertTrue(in_array('client1', $clients));
        $this->assertFalse(in_array('client4', $clients));
    }

   
}
   
?>
