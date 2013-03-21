<?php
class ScreenTest extends CDbTestCase
{
    public $fixtures=array
    (
        'screens'=>'Screen', 
        'monitors'=>'Monitor'
    );
  
    public function testRead()
    {
        $retrievedScreen = $this->screens('screen1');
        $this->assertTrue($retrievedScreen instanceof Screen);
        $this->assertEquals('Test Screen 1',$retrievedScreen->name);
    }
 
    public function testCreate()
    {
        $monitor = new Monitor;
        $monitor->name = "Monitor 6";
        $monitor->size = 7;
        $this->assertTrue($monitor->save(FALSE));
    }
    
    public function testMonitor()
    {
        $retrievedMonitor = $this->monitors('monitor1');
        $this->assertTrue($retrievedMonitor instanceof Monitor);
        $this->assertEquals('monitor1',$retrievedMonitor->name);
    }
    
  
            
}
   
?>
