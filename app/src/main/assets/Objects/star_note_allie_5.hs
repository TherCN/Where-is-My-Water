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
		<Sprite filename="/Sprites/star_seed_ray_note_allie.sprite" pos="0.8 0" angle="0" gridSize="10 -10" visible="false"/>
		<Sprite filename="/Sprites/star_seed_glow_note.sprite" pos="0 0" angle="0" gridSize="7.61538 -6.9231" visible="false" />
		<Sprite filename="/Sprites/star_seed_note_5.sprite" pos="0 0" angle="0" gridSize="6.0 -5.19231" />
		<Sprite filename="/Sprites/star_seed_note_outline.sprite" pos="0 0" angle="0" gridSize="6.0 -5.19231" /> 
	</Sprites>
	<DefaultProperties>
		<Property name="StarType" value="note" />
		<Property name="AllowedFluid" value="steam" />
        <Property name="IgnoreFluid" value="none" />
        <Property name="PlatinumType" value="note" />
		<Property name="Type" value="star" />
		<Property name="FillTexture" value="/Textures/ducky_steam_tile.webp" />
		<Property name="FillDirection" value="down" />
		<Property name="Order" value="4" />
		<Property name="AllowCollect" value="0" />
		<Property name="NumParticlesToHatch" value="3" />
		<Property name="Color" value="209 85 174 255" />
	</DefaultProperties>
</InteractiveObject>
