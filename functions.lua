function usemoreblocks()
	for x,v in pairs(nodelist) do
		stairsplus:register_all(thismod, v, thismod..":"..v, {
					description = thismod.." "..v.." ",
					tiles = {v..".png"},
					groups = {cracky = 2, oddly_breakable_by_hand=2},
					sounds = default.node_sound_stone_defaults()
					})
	end
end

function usestairsplus()
	for x,v in pairs(nodelist) do
		stairsplus.register_stair_and_slab_and_panel_and_micro(
					thismod,
					v,
					thismod..":"..v,
					{cracky = 2, oddly_breakable_by_hand=2},
					{v..".png"},
					v.." Stair",
					v.." corner",
					v.." slab",
					v.." wall",
					v.." panel",
					v.." micro",
					v,
					default.node_sound_stone_defaults()
					)
	end
end

function usedefault()
	for x,v in pairs(nodelist) do
		stairs.register_stair_and_slab(
					v,
					thismod..":"..v,
					{cracky = 2, oddly_breakable_by_hand=2},
					{v..".png"},
					v.." Stair",
					v.." slab",
					default.node_sound_stone_defaults()
					)
	end
end