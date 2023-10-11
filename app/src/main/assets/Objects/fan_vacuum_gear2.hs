<?xml version="1.0"?>
<InteractiveObject>
	<!-- FAN 24 x 8 -->
	<Shapes>
		<Shape>
			<Point pos="-4 4" />
			<Point pos="4 4" />
			<Point pos="4 -4" />
			<Point pos="-4 -4" />
		</Shape>
	</Shapes>
	<Sprites>
		<Sprite filename="/Sprites/fan_vacuum.sprite" pos="0 0" angle="0" gridSize="8 -10" />
		<Sprite filename="/Sprites/fan_gear_2.sprite" pos="0 0" angle="0" gridSize="5 -5" />
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="fan" />
      	<Property name="Gears" value="1" />
		<Property name="FanType" value="vacuum" />
	</DefaultProperties>
</InteractiveObject>
