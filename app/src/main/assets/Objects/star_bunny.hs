<?xml version="1.0"?>
<InteractiveObject>
	<!-- basic star object (secondary gameplay goal) -->
	<Shapes>
		<Shape>
			<Point pos="0 3.75" />
			<Point pos="3.02 3.02" />
			<Point pos="3.75 0" />
			<Point pos="3.02 -3.02" />
			<Point pos="0 -3.75" />
			<Point pos="-3.02 -3.02" />
			<Point pos="-3.75 0" />
			<Point pos="-3.02 3.02" />
		</Shape>
	</Shapes>
	<Sprites>
		<Sprite filename="/Sprites/star_bunny.sprite" pos="0 0" angle="0" gridSize="1.0 1.0" />
		<Sprite filename="/Sprites/star_bunny.sprite" pos="0 0" angle="0" gridSize="1.0 1.0" />
		<Sprite filename="/Sprites/star_bunny.sprite" pos="0 0" angle="0" gridSize="1.0 1.0" />
		<Sprite filename="/Sprites/star_bunny.sprite" pos="0 0" angle="0" gridSize="10.0 -10.0" />
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="star" />
        <Property name="PlatinumType" value="normal" />
        <Property name="NumParticlesToHatch" value="1" />
	</DefaultProperties>
</InteractiveObject>
