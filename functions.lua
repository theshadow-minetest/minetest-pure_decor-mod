function usemoreblocks()
	for x,v in pairs(nodelist) do
		stairsplus:register_all(thismod, v, thismod..":"..v, {
					description = thismod.." "..v.." ",
					tiles = {v..".png"},
					groups = {cracky = 2, oddly_breakable_by_hand=2},
					light_source = 1,
					sounds = default.node_sound_stone_defaults()
					})
	end
	for x,v in pairs(nodelist) do
		stairsplus:register_all(thismod, v.."_lit", thismod..":"..v.."_lit", {
					description = thismod.." "..v.."_lit ",
					tiles = {v..".png"},
					groups = {cracky = 2, oddly_breakable_by_hand=2},
					light_source = 11,
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

--[[columnia.register_column_ia(	subname,
									recipeitem,
									groups,
									images,
									desc_column_mid,
									desc_column_top,
									desc_column_bottom,
									desc_column_crosslink,
									desc_column_link,
									desc_column_linkdown,
									sounds	)
--]]
function usecolumnia()
	for x,v in pairs(nodelist) do
		columnia.register_column_ia(
					v,
					thismod..":"..v,
					{cracky = 2, oddly_breakable_by_hand=2},
					{v..".png"},
					v.." column mid",
					v.." column top",
					v.." column bottom",
					v.." column crosslink",
					v.." column link",
					v.." column linkdown",
					default.node_sound_stone_defaults()
					)
	end
end
