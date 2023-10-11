<?xml version="1.0"?>
<InteractiveObject>
	<!-- basic star object (secondary gameplay goal) -->
	<Shapes>
		<Shape>
			<Point pos="0 2.85" />
			<Point pos="2.2952 2.2952" />
			<Point pos="2.85 0" />
			<Point pos="2.2952 -2.2952" />
			<Point pos="0 -2.85" />
			<Point pos="-2.2952 -2.2952" />
			<Point pos="-2.85 0" />
			<Point pos="-2.2952 2.2952" />
		</Shape>
	</Shapes>
	<Sprites>
		<Sprite filename="/Sprites/star_seed_baby_ray.sprite" pos="0 0" angle="0" gridSize="4.25 -4" />
		<Sprite filename="/Sprites/star_seed_baby_glow.sprite" pos="0 0" angle="0" gridSize="4.25 -4" />
		<Sprite filename="/Sprites/star_seed_baby.sprite" pos="0 0" angle="0" gridSize="3.25 -3" />
		<Sprite filename="/Sprites/star_seed_baby_outline.sprite" pos="0 0" angle="0" gridSize="3.25 -3.25" />
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="star" />
		<Property name="StarType" value="baby" />
		<Property name="PlatinumType" value="platinum" />          
		<Property name="NumParticlesToHatch" value="1" />
		<Property name="CutRadius" value="2.75" />
	</DefaultProperties>
</InteractiveObject>
