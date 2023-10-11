<?xml version="1.0"?>
<InteractiveObject>
	<!-- basic touchable spout -->
	<Shapes>
		<Shape>
			<Point pos="-5 1.9" />
			<Point pos="1.6 1.2" />
			<Point pos="1.6 -1.2" />
			<Point pos="-5 -1.9" />
		</Shape>
	</Shapes>
	<Sprites>
		<Sprite filename="/Sprites/spout_background.sprite" pos="0 0" angle="0" gridSize="6 -5" isBackground="true"/>
		<Sprite filename="/Sprites/spout.sprite" pos="0 0" angle="0" gridSize="6 -5" />
		<Sprite filename="/Sprites/spout_valve_generic.sprite" pos="-4 0" angle="0" gridSize="6 -6" />
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="spout" />
		<Property name="SpoutType" value="TouchSpout" />
		<Property name="ExpulsionAngle" value="0" />
		<Property name="ParticleSpeed" value="30" />
		<Property name="OffsetToMouth" value="1.8 0" /> 
		<Property name="FluidType" value="Water" />
		<Property name="NumberParticles" value="-1" />
		<Property name="ParticlesPerSecond" value="5" />
		<Property name="ValveIndex" value="1" />
		<Property name="ParticleQueueThreshold" value="1"/>	         
	</DefaultProperties>
</InteractiveObject>
