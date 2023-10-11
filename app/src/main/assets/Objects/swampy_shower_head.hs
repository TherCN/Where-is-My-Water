<?xml version="1.0"?>
<InteractiveObject>
	<!-- shower head (for inside sawmpy's room) -->
	<Sprites>
		<Sprite filename="/Sprites/swampy_spout_background.sprite" pos="0 0" angle="0" gridSize="5 -5" isBackground="true"/>
		<Sprite filename="/Sprites/swampy_spout.sprite" pos="0 0" angle="0" gridSize="5 -5" />
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="spout" />
		<Property name="SpoutType" value="OpenSpout" />
		<Property name="ExpulsionAngle" value="-75" />
		<Property name="ParticleSpeed" value="12" />
		<Property name="OffsetToMouth" value="0 -2" /> 
		<Property name="OffsetVariation" value="1.0" />
		<Property name="FluidType" value="Water" />
		<Property name="NumberParticles" value="0" />
		<Property name="ParticlesPerSecond" value="8" />
		<Property name="IgnoreInEditorObjectSelect" value="1" />
	</DefaultProperties>
</InteractiveObject>
