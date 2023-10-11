<?xml version="1.0"?>
<InteractiveObject>
	<!-- water balloon -->
	<Shapes>
		<Shape>
			<Point pos="0.000000 -1.000000" />
			<Point pos="-0.500000 -0.866025" />
			<Point pos="-0.866026 -0.500000" />
			<Point pos="-1.000000 0.000000" />
			<Point pos="-0.866025 0.500000" />
			<Point pos="-0.500000 0.866026" />
			<Point pos="0.000000 1.000000" />
			<Point pos="0.500000 0.866025" />
			<Point pos="0.866025 0.500000" />
			<Point pos="1.000000 0.000000" />
			<Point pos="0.866025 -0.500000" />
			<Point pos="0.500000 -0.866025" />
		</Shape>
	</Shapes>
	<Sprites>
		<Sprite filename="/Sprites/balloon.sprite" pos="0 0" angle="0" gridSize="6 -6" visible="false" />
		<Sprite filename="/Sprites/balloon_contaminated.sprite" pos="0 0" angle="0" gridSize="6 -6" visible="false" />
		<Sprite filename="/Sprites/balloon_steam.sprite" pos="0 0" angle="0" gridSize="6 -6" visible="false" />
		
		<Sprite filename="/Sprites/balloon_mouth.sprite" pos="0 0" angle="0" gridSize="1.2 -1.2" />
		<Sprite filename="/Sprites/balloon_mud.sprite" pos="0 0" angle="0" gridSize="6 -6" visible="false" />        
	</Sprites>
	<UVs>
		<UV pos="0.500000 1.000000" />
		<UV pos="0.250000 0.933013" />
		<UV pos="0.066987 0.750000" />
		<UV pos="0.000000 0.500000" />
		<UV pos="0.066987 0.250000" />
		<UV pos="0.250000 0.066987" />
		<UV pos="0.500000 0.000000" />
		<UV pos="0.750000 0.066987" />
		<UV pos="0.933013 0.250000" />
		<UV pos="1.000000 0.500000" />
		<UV pos="0.933013 0.750000" />
		<UV pos="0.750000 0.933013" />
		<UV pos="0.500000 0.500000" />
	</UVs>
	<VertIndices>
		<Vert index="0" />
		<Vert index="0" />
		<Vert index="12" />
		<Vert index="1" />
		<Vert index="2" />
		<Vert index="2" />
		
		<Vert index="2" />
		<Vert index="2" />
		<Vert index="12" />
		<Vert index="3" />
		<Vert index="4" />
		<Vert index="4" />
		
		<Vert index="4" />
		<Vert index="4" />
		<Vert index="12" />
		<Vert index="5" />
		<Vert index="6" />
		<Vert index="6" />
		
		<Vert index="6" />
		<Vert index="6" />
		<Vert index="12" />
		<Vert index="7" />
		<Vert index="8" />
		<Vert index="8" />
		
		<Vert index="8" />
		<Vert index="8" />
		<Vert index="12" />
		<Vert index="9" />
		<Vert index="10" />
		<Vert index="10" />
		
		<Vert index="10" />
		<Vert index="10" />
		<Vert index="12" />
		<Vert index="11" />
		<Vert index="0" />
		<Vert index="0" />
		
	</VertIndices>
	<DefaultProperties>
		<Property name="Type" value="waterballoon" />
		<Property name="Interactive" value="1" />
		<Property name="EdgeSpringK" value="500" />
		<Property name="EdgeSpringDamping" value="1" />
		<Property name="ShapeMatchingK" value="500" />
		<Property name="ShapeMatchingDamping" value="500" />
		<Property name="InternalSpring0" value="0 4 500 10" />
		<Property name="InternalSpring1" value="1 5 500 10" />
		<Property name="InternalSpring2" value="2 6 500 10" />
		<Property name="InternalSpring3" value="3 7 500 10" />
		<Property name="InternalSpring4" value="4 8 500 10" />
		<Property name="InternalSpring5" value="5 9 500 10" />
		<Property name="InternalSpring6" value="6 10 500 10" />
		<Property name="InternalSpring7" value="7 11 500 10" />
		<Property name="InternalSpring8" value="8 0 500 10" />
		<Property name="InternalSpring9" value="9 1 500 10" />
		<Property name="InternalSpring10" value="10 2 500 10" />
		<Property name="InternalSpring11" value="11 3 500 10" />
		<Property name="PointMass" value="1" />
		<Property name="InitialParticles" value="water 10" />
		<Property name="AttachVertIndex" value="6" />
		<Property name="MouthSpriteIndex" value="3" />
		<Property name="CollisionFrictionWorld" value="0.2" />
		<Property name="CollisionElasticityWorld" value="0.05" />
		<Property name="ContaminatedSpriteIndex" value="1" />
		<Property name="SteamSpriteIndex" value="2" />
        <Property name="MudSpriteIndex" value="4"/>
	</DefaultProperties>
</InteractiveObject>
