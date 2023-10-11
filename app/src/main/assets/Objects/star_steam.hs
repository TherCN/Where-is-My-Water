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
		<Sprite filename="/Sprites/star_seed_ray.sprite" pos="0 0" angle="0" gridSize="10 -10" />
		<Sprite filename="/Sprites/star_seed_glow.sprite" pos="0 0" angle="0" gridSize="7.61538 -6.9231" />
		<Sprite filename="/Sprites/star_seed_steam.sprite" pos="0 0" angle="0" gridSize="6.0 -5.19231" />
		<Sprite filename="/Sprites/star_seed_steam_outline.sprite" pos="0 0" angle="0" gridSize="6.0 -5.19231" /> 
	</Sprites>
	<DefaultProperties>
		<Property name="AllowedFluid" value="steam" />
        <Property name="IgnoreFluid" value="water" />
        <Property name="PlatinumType" value="platinum" />
		<Property name="Type" value="star" />
		<Property name="FillTexture" value="/Textures/ducky_steam_tile.webp" />
		<Property name="FillDirection" value="down" />
	</DefaultProperties>
</InteractiveObject>
