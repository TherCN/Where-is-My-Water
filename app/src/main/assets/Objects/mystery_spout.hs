<?xml version="1.0"?>
<InteractiveObject>
	<!-- basic shower head (for outside sawmpy's room) -->
	<Shapes>
		<Shape>
			<Point pos="-3 1.9" />
			<Point pos="1.6 1.2" />
			<Point pos="1.6 -1.2" />
			<Point pos="-3 -1.9" />
		</Shape>
	</Shapes>
	<Sprites>
		<Sprite filename="/Sprites/mystery_spout_background.sprite" pos="0 0" angle="0" gridSize="6 -5" isBackground="true"/>
		<Sprite filename="/Sprites/mystery_spout.sprite" pos="0 0" angle="0" gridSize="6 -5" />
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="spout" />
		<Property name="SpoutType" value="OpenSpout" />
		<Property name="ExpulsionAngle" value="0" />
		<Property name="ParticleSpeed" value="10" />
		<Property name="OffsetToMouth" value="1.8 0" /> 
		<Property name="ParticlesPerSecond" value="5" />
        <Property name="FluidType" value="Water"/>
	</DefaultProperties>
</InteractiveObject>
