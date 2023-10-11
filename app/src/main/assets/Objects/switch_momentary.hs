<?xml version="1.0"?>
<InteractiveObject>
	<Shapes>
		<Shape>
			<Point pos="-4 4" />
			<Point pos="4 4" />
			<Point pos="4 -4" />
			<Point pos="-4 -4" />
		</Shape>
	</Shapes>
	<Sprites>
		<Sprite filename="/Sprites/switch_momentary_button.sprite" pos="-4 0" angle="90" gridSize="5 -3" />
		<Sprite filename="/Sprites/switch_momentary_button.sprite" pos="0 -4" angle="180" gridSize="5 -3" />
		<Sprite filename="/Sprites/switch_momentary_button.sprite" pos="4 0" angle="-90" gridSize="5 -3" />
		<Sprite filename="/Sprites/switch_momentary_button.sprite" pos="0 4" angle="0" gridSize="5 -3" />
		<Sprite filename="/Sprites/switch_momentary.sprite" pos="0 0" angle="0" gridSize="8 -8" />
		<Sprite filename="/Sprites/switch_momentary_gear.sprite" pos="0 0" angle="0" gridSize="6 -6" />
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="switch" />
		<Property name="SwitchType" value="momentary" />
		<Property name="GearIndex" value="5" />
		<Property name="ButtonOut" value="4" />
		<Property name="ButtonIn" value="2" />
		<Property name="Button0" value="0" />
		<Property name="Button1" value="1" />
		<Property name="Button2" value="2" />
		<Property name="Button3" value="3" />
		<Property name="SpoutCollisionIndex" value="0" />
	</DefaultProperties>
</InteractiveObject>
