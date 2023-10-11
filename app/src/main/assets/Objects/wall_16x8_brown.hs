<?xml version="1.0"?>
<InteractiveObject>
	<!-- WALL 24 x 8 basic square wall -->
	<Shapes>
		<Shape>
			<Point pos="-4 4" />
			<Point pos="12 4" />
			<Point pos="12 -4" />
			<Point pos="-4 -4" />
		</Shape>
	</Shapes>
	<Sprites>
		<Sprite filename="/Sprites/object_motorized_main_brown.sprite" pos="0 0" angle="-90" gridSize="8 -8" />
		<Sprite filename="/Sprites/object_motorized_gear_brown.sprite" pos="0 0" angle="0" gridSize="6 -6" />
		<Sprite filename="/Sprites/object_motorized_plain_brown.sprite" pos="8 0" angle="0" gridSize="8 -8" />
	</Sprites>
	<DefaultProperties>
		<Property name="Interactive" value="0" />
		<Property name="Draggable" value="0" />
		<Property name="GearIndex" value="1" />
	</DefaultProperties>
</InteractiveObject>
