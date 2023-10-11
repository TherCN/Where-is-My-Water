<?xml version="1.0"?>
<InteractiveObject>
	<!-- basic star object (secondary gameplay goal) -->
	<Shapes>
		<Shape>
			<Point pos="0 7.5" />
			<Point pos="6.04 6.04" />
			<Point pos="7.5 0" />
			<Point pos="6.04 -6.04" />
			<Point pos="0 -7.5" />
			<Point pos="-6.04 -6.04" />
			<Point pos="-7.5 0" />
			<Point pos="-6.04 6.04" />
		</Shape>
	</Shapes>
	<Sprites>
		<Sprite filename="/Sprites/star_seed_mega_ray.sprite" pos="0 0" angle="0" gridSize="20 -20" />
		<Sprite filename="/Sprites/star_seed_mega_glow.sprite" pos="0 0" angle="0" gridSize="18 -18" />
		<Sprite filename="/Sprites/star_seed_mega.sprite" pos="0 0" angle="0" gridSize="14 -14" />
		<Sprite filename="/Sprites/star_seed_mega_outline.sprite" pos="0 0" angle="0" gridSize="14 -14" />
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="star" />
		<Property name="StarType" value="mega" />
		<Property name="PlatinumType" value="platinum" />  
		<Property name="NumParticlesToHatch" value="20" />
		<Property name="BlastRadius" value="7.5" />
        <Property name="IsSponge" value="1" />
	</DefaultProperties>
</InteractiveObject>