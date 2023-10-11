<?xml version="1.0"?>
<InteractiveObject>
	<!-- basic drain -->
	<Shapes>
		<Shape>
			<Point pos="-2.25 0.5" />
			<Point pos="0 0.15" />
			<Point pos="2.25 0.5" />
			<Point pos="1.25 -2.65" />
			<Point pos="-1.25 -2.65" />
		</Shape>
	</Shapes>
	<Sprites>
		<Sprite filename="/Sprites/vacuum_drain_back.sprite" pos="0 0" angle="180" gridSize="6 -6" isBackground="true"/>
		<Sprite filename="/Sprites/vacuum_drain.sprite" pos="0 0" angle="180" gridSize="6 -6" />
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="spout" />
		<Property name="SpoutType" value="DrainSpout" />
        <Property name="Type" value="spout"/>
        <Property name="VacuumBaseAngle" value="90"/>
        <Property name="VacuumCenterOffsetA" value="-3 -1"/>
        <Property name="VacuumCenterOffsetB" value="-3 1"/>
        <Property name="VacuumForce" value="30"/>
        <Property name="VacuumMaxD" value="30"/>
        <Property name="VacuumMaxForce" value="30"/>
        <Property name="VacuumOn" value="0"/> 
        <Property name="VacuumRaycastOffset" value="1.5"/>
	</DefaultProperties>
</InteractiveObject>
