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
		<Sprite filename="/Sprites/star_seed_ray.sprite" pos="0 0" angle="0" gridSize="10 -10" visible="false" />
		<Sprite filename="/Sprites/star_seed_glow_cranky.sprite" pos="0 0" angle="0" gridSize="7.61538 -6.9231" />
		<Sprite filename="/Sprites/star_seed_cranky.sprite" pos="0 0" angle="0" gridSize="6.0 -5.19231" />
		<Sprite filename="/Sprites/star_seed_cranky_outline.sprite" pos="0 0" angle="0" gridSize="6.0 -5.19231" />  
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="star" />
		<Property name="AllowedFluid" value="contaminatedwater" />
        <Property name="PlatinumType" value="normal" />
		<Property name="FillTexture" value="/Textures/ducky_dirty_water_tile.webp" />
	</DefaultProperties>
</InteractiveObject>
