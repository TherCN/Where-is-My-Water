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
        <Sprite filename="/Sprites/star_frankenweenie_duck_ray.sprite" pos="0 0" angle="0" gridSize="14 -14" />
		<Sprite filename="/Sprites/star_frankenweenie_duck_glow.sprite" pos="0 0" angle="0" gridSize="5 -5" />
		<Sprite filename="/Sprites/star_frankenweenie_duck_empty.sprite" pos="0 0" angle="0" gridSize="6 -5.4" />
		<Sprite filename="/Sprites/star_frankenweenie_duck_outline.sprite" pos="0 0" angle="0" gridSize="6.0 -5.19231" />
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="star" />
        <Property name="PlatinumType" value="normal" />
	</DefaultProperties>
</InteractiveObject>
