<?xml version="1.0"?>
<InteractiveObject>
	<Shapes>
		<Shape>
			<Point pos=" 0     -5.244" />
			<Point pos="-2.958 -4.543" />
			<Point pos="-4.297 -5.244" />
			<Point pos="-6.069 -2.553" />
			<Point pos="-4.705 -1.633" />
			<Point pos="-3.264  1.898" />
			<Point pos="-1.670  3.600" />
			<Point pos="-1.670  5.359" />            
            <Point pos=" 1.670  5.359" />            
			<Point pos=" 1.670  3.600" />            
			<Point pos=" 3.264  1.898" />            
			<Point pos=" 4.705 -1.633" />            
			<Point pos=" 6.069 -2.553" />            
			<Point pos=" 4.297 -5.244" />            
			<Point pos=" 2.958 -4.543" />            
		</Shape>
	</Shapes>
	<Sprites>
		<Sprite filename="/Sprites/pipe_y_switch.sprite" pos="0 0" angle="0" gridSize="12.75 -11.5" />     
		<Sprite filename="/Sprites/pipe_y_switch_toggle.sprite" pos="0 -0.805" angle="0" gridSize="6.75 -6.75" />	
        <Sprite filename="/Sprites/pipe_y_switch_window.sprite" pos="0 -0.805" angle="0" gridSize="6.75 -6.75" />           
        
    </Sprites>
	<DefaultProperties>
		<Property name="Type" value="yswitch" />
		<Property name="YSwitchPosition" value="1"/>
        <Property name="ToggleSpriteIndex" value="1"/>
        <Property name="WindowSpriteIndex" value="2"/>        
        <Property name="FirstRightSpout" value="0"/>
	</DefaultProperties>
</InteractiveObject>
