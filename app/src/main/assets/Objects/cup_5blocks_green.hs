<?xml version="1.0"?>
<InteractiveObject>
	<!-- WALL 24 x 8 basic square wall -->
	<Shapes>
		<Shape>
			<Point pos="-12 12" />
			<Point pos="-4 12" />
            <Point pos="-4 4" />
            <Point pos="4 4" />
            <Point pos="4 12" />
			<Point pos="12 12" />
			<Point pos="12 -4" />
            <Point pos="-12 -4" />
		</Shape>
	</Shapes>
	<Sprites>
        <Sprite filename="/Sprites/object_motorized_plain_green.sprite" pos="-8 8" angle="0" gridSize="8 -8" />
		<Sprite filename="/Sprites/object_motorized_plain_green.sprite" pos="-8 0" angle="0" gridSize="8 -8" />
		<Sprite filename="/Sprites/object_motorized_main_green.sprite" pos="0 0" angle="0" gridSize="8 -8" />
		<Sprite filename="/Sprites/object_motorized_plain_green.sprite" pos="8 0" angle="0" gridSize="8 -8" />
        <Sprite filename="/Sprites/object_motorized_plain_green.sprite" pos="8 8" angle="0" gridSize="8 -8" />
        <Sprite filename="/Sprites/object_motorized_gear_green.sprite" pos="0 0" angle="0" gridSize="6 -6" />
	</Sprites>
	<DefaultProperties>
		<Property name="Interactive" value="0" />
		<Property name="Draggable" value="0" />
		<Property name="GearIndex" value="5" />
	</DefaultProperties>
</InteractiveObject>
