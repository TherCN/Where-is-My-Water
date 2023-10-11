<?xml version="1.0"?>
<InteractiveObject>
	<!-- basic drain -->
	<Shapes>
		<Shape>
			<Point pos="-2.25 0.5" />
			<Point pos="0 0.15" />
			<Point pos="2.25 0.5" />
			<Point pos="1.25 -2.65" />
			<Point pos="-1.25 -2.65" />
		</Shape>
	</Shapes>
	<Sprites>
		<Sprite filename="/Sprites/pipe_straight_short_m.sprite" pos="0 -3" angle="90" gridSize="2 -2" />    
		<Sprite filename="/Sprites/mystery_drain_background.sprite" pos="0 0" angle="0" gridSize="4.5 -5" isBackground="true"/>
		<Sprite filename="/Sprites/pipe_into_wall_2_m.sprite" pos="0 -5" angle="-90" gridSize="4 -3" />        
		<Sprite filename="/Sprites/mystery_drain.sprite" pos="0 0" angle="0" gridSize="4.5 -5" />
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="spout" />
		<Property name="SpoutType" value="DrainSpout" />
        <Property name="IsMysterious" value="1" />
		<Property name="PlatinumType" value="platinum" />        
	</DefaultProperties>
</InteractiveObject>
