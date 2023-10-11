<?xml version="1.0"?>
<InteractiveObject>
	<!-- basic drain -->
	<Shapes>
		<Shape>
			<Point pos="-2.25 1.0" />
			<Point pos="0 0.65" />
			<Point pos="2.25 1.0" />
			<Point pos="1.25 -2.65" />
			<Point pos="-1.25 -2.65" />
		</Shape>
	</Shapes>
	<Sprites>
		<Sprite filename="/Sprites/broken_pipe_background.sprite" pos="0 0" angle="0" gridSize="4.5 -5" isBackground="true"/>
		<Sprite filename="/Sprites/broken_pipe.sprite" pos="0 0" angle="0" gridSize="4.5 -5" />
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="spout" />
		<Property name="SpoutType" value="DrainSpout" />
		<Property name="Goal" value="1" />
		<Property name="GoalPreset" value="Swampy" />
	</DefaultProperties>
</InteractiveObject>
