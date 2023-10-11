<?xml version="1.0"?>
<InteractiveObject>
	<Shapes>
		<Shape>
			<Point pos="-3.8 3.8" />
			<Point pos="5.0 3.8" />
			<Point pos="5.0 -3.8" />
			<Point pos="-3.8 -3.8" />
		</Shape>
	</Shapes>
	<Sprites>
		<Sprite filename="/Sprites/Fluid_Convert_Tap_Button.sprite" pos="5 0" angle="0" gridSize="12 -6" />
		<Sprite filename="/Sprites/Fluid_Convert_Mask.sprite" pos="0 0" angle="0" gridSize="6.444 -6.444" />       
		<Sprite filename="/Sprites/Fluid_Convert_Object.sprite" pos="0 0" angle="0" gridSize="8 -8" />         
	</Sprites>
	<DefaultProperties>
		<Property name="Type" value="fluidconverter" />
		<Property name="ConverterType" value="dynamic" />
		<Property name="FluidType0" value="water" />
		<Property name="FluidType1" value="contaminatedwater" />
		<Property name="FluidType2" value="lava" />
		<Property name="FluidType3" value="steam" />
		<Property name="FluidType4" value="wetmud" />        
		<Property name="FluidType5" value="drymud" />   
        <Property name="MaskSpriteIndex" value="1" />                                    
        <Property name="OutlineSpriteIndex" value="2" />                               
	</DefaultProperties>
</InteractiveObject>
