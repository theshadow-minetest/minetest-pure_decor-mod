
-- ****************** get table nodelist *******************
dofile(minetest.get_modpath(minetest.get_current_modname()).."/nodelist.lua")
dofile(minetest.get_modpath(minetest.get_current_modname()).."/functions.lua")

-- ****************** declare global variables *******************
thismod = "pure_decor"

-- ****************** register basic block ********************
for x,v in pairs(nodelist) do
	minetest.register_node(thismod..":"..v, {
		description = v,
		tiles = {
			v..".png"},
		drawtype = "normal",
		light_source = 1,
		is_ground_content = false,
		groups = {cracky = 2, oddly_breakable_by_hand=2},
		sounds = default.node_sound_stone_defaults()
	})
end

for x,v in pairs(nodelist) do
	minetest.register_node(thismod..":"..v.."_lit", {
		description = v.."_lit",
		tiles = {
			v..".png"},
		drawtype = "normal",
		light_source = 11,
		is_ground_content = false,
		groups = {cracky = 2, oddly_breakable_by_hand=2},
		sounds = default.node_sound_stone_defaults()
	})
end

-- ****************** register stairs *******************
if minetest.get_modpath("moreblocks") then
	usemoreblocks()
		elseif minetest.get_modpath("stairsplus") then
			usestairsplus()
				else
					usedefault()
end

-- ***************** register columns *******************
if minetest.get_modpath("columnia") then
	usecolumnia()
end
