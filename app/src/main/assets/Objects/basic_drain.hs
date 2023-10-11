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
		<Sprite filename="/Sprites/drain_background.sprite" pos="0 0" angle="0" gridSize="6 -6" isBackground="true"/>
		<Sprite filename="/Sprites/drain.sprite" pos="0 0" angle="0" gridSize="6 -6" />
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="spout" />
		<Property name="SpoutType" value="DrainSpout" />
	</DefaultProperties>
</InteractiveObject>
