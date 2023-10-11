<?xml version="1.0"?>
<InteractiveObject>
	<!-- FAN 24 x 8 -->
	<Shapes>
		<Shape>
			<Point pos="-12 4" />
			<Point pos="12 4" />
			<Point pos="12 -4" />
			<Point pos="-12 -4" />
		</Shape>
	</Shapes>
	<Sprites>
		<Sprite filename="/Sprites/fan_cable.sprite" pos="-4 -3" angle="0" gridSize="4.5 -2.1" />
		<Sprite filename="/Sprites/fan_cable.sprite" pos="4 -3" angle="0" gridSize="4.5 -2.1" />
		<Sprite filename="/Sprites/fan_fg.sprite" pos=".1 -.8" angle="0" gridSize="7.9 -8.3" />
		<Sprite filename="/Sprites/fan_bg.sprite" pos=".1 3.15" angle="0" gridSize="7.8 -3.45" isBackground="true"/>
		<Sprite filename="/Sprites/fan_fg.sprite" pos="-8 -.8" angle="0" gridSize="7.9 -8.3" />
		<Sprite filename="/Sprites/fan_bg.sprite" pos="-8 3.15" angle="0" gridSize="7.8 -3.45" isBackground="true"/>
		<Sprite filename="/Sprites/fan_fg.sprite" pos="8.1 -.8" angle="0" gridSize="7.9 -8.3" />
		<Sprite filename="/Sprites/fan_bg.sprite" pos="8.1 3.15" angle="0" gridSize="7.8 -3.45" isBackground="true"/>
		<Sprite filename="/Sprites/fan_gear_1.sprite" pos="-8 -2" angle="0" gridSize="4.5 -4.5" />
		<Sprite filename="/Sprites/fan_gear_1.sprite" pos="0 -2" angle="0" gridSize="4.5 -4.5" />
		<Sprite filename="/Sprites/fan_gear_1.sprite" pos="8 -2" angle="0" gridSize="4.5 -4.5" />
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="fan" />
		<Property name="FanType" value="fan" />
		<Property name="Interactive" value="0" />
		<Property name="Draggable" value="0" />
		<Property name="VacuumBaseAngle" value="90"/>
      	<Property name="VacuumBlows" value="1"/>
      	<Property name="VacuumCenterOffsetA" value="0 -12"/>
      	<Property name="VacuumCenterOffsetB" value="0 12"/>
      	<Property name="VacuumMaxAngle" value="15"/>
      	<Property name="VacuumMaxD" value="45"/>
      	<Property name="VacuumMinAngle" value="-15"/>
      	<Property name="VacuumFriction" value="0.005" />
      	<Property name="VacuumForce" value="40" />
      	<Property name="VacuumMaxForce" value="20" />
      	<Property name="Gears" value="5 6 7" />
		<Property name="Fans" value="0 1 2" />
	</DefaultProperties>
</InteractiveObject>
