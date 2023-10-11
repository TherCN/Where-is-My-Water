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
		<Sprite filename="/Sprites/star_seed_teleport_ray.sprite" pos="0 0" angle="0" gridSize="9.23076 -11.53847" />
		<Sprite filename="/Sprites/star_seed_teleport_glow.sprite" pos="0 0" angle="0" gridSize="8.30769 -10.38462" />
		<Sprite filename="/Sprites/star_seed_teleport.sprite" pos="0 1.32692" angle="0" gridSize="6.34615 -7.84616" sizeRefAnim="DUCK_FULL"/>
		<Sprite filename="/Sprites/star_seed_teleport_outline.sprite" pos="0 1.32692" angle="0" gridSize="6.34615 -7.84616" sizeRefAnim="IDLE"/>     
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="star" />
		<Property name="StarType" value="teleport" />
		<Property name="PlatinumType" value="platinum" />
        <Property name="TeleportMoveEase" value="out"/>
        <Property name="Burst" value="1"/>
	</DefaultProperties>
</InteractiveObject>