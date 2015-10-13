# Minetest mod pure_decor 0.001

Released under LGPLv2.1 license

rename directory to pure_decor when installing.

This mod is designed to be used in creative mode. Because the nodes are easily changed added to and replaced
there are no recipes available to access them. They either require the creative inventory or giveme command.

Nodes are easily removed and or added to create your own custom set of blocks in a creative world.

Create a seamless tile image in 8x8, 16x16, 32x32, 64x64, etc. in .png format and add to the textures directory.
Add that images name without the .png extension into the nodelist.lua file.

That's all that is needed to add a custom creative node.

This mod will use moreblocks stairsplus mod to make steps and micro blocks.
Put the block on the circular saw and there you go. :)

If you are using the stand alone stairs plus it can use that as well. This mod was built to prefer moreblocks though.

Created using the most recent github versions of the above mentioned mods. If using older versions there may be errors.

If you are not using either of those mods it will register with the default stairs mod.

Images included are for demo only. If you don't like them feel free to remove them and add your own from scratch.
Presto you have your own custom set for your creative game or server. You are however free to keep the demo images there as well.

Thanks so much to the coders of moreblocks and stairsplus for making this so much easier.

####################### more detailed info #########################
When using with moreblocks you may want to put a bit more detail in your seamless image. To allow the micro blocks to
merge better you will want to create your original seamless image in a smaller format, then tile that into a larger image.
example
	create your original image as a 32x32. Then tile that into a 128x128 image. 
	The 128x image would be the one dropped into the texture directory.
	The micro blocks will seamlessly tile into each other as well that way.

Moreblocks creates micro blocks down to 1/16 so if you wanted to be sure that all micro blocks were seamless you would need to
start with 16x16 in the above example or you would need to tile the 32x into a 256x image. It would be a matter of considering the
trade off between texture detail and or hardware resource use. The larger your final image --- the more lag. The smaller your
starting image and or final image the less detailed.