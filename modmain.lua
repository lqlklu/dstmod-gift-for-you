PrefabFiles = { "giftwrap_tool" }

local recipes = {}

if true then
	local ingredients_stack = {
		{},
		{
			Ingredient("petals", 1),
		},
		{
			Ingredient("petals", 1),
			Ingredient("cutreeds", 1),
		},
		{
			Ingredient("papyrus", 1),
			Ingredient("petals", 1),
		},
	}
	local ingredients = ingredients_stack[GetModConfigData("giftwrap_craft_difficulty")]
	table.insert(recipes, {
		name = "giftwrap",
		ingredients = ingredients,
		tech = GLOBAL.TECH.NONE,
		config = {
			nounlock = true,
			numtogive = 4,
		},
		filters = { "MODS", "CONTAINERS" },
	})
end

if GetModConfigData("giftwrap_sanity") then
	table.insert(recipes, {
		name = "giftwrap_sanity",
		ingredients = {
			Ingredient(GLOBAL.CHARACTER_INGREDIENT.SANITY, GetModConfigData("giftwrap_sanity_cost")),
		},
		tech = GLOBAL.TECH.NONE,
		config = {
			nounlock = true,
			numtogive = 1,
			product = "giftwrap",
		},
		filters = { "MODS", "CONTAINERS" },
	})
end

if GetModConfigData("gift_nesting") then
	AddPrefabPostInit("gift", function(inst)
		inst:RemoveTag("bundle")
	end)
end

if GetModConfigData("bundle_enable") then
	table.insert(recipes, {
		name = "bundlewrap",
		ingredients = {
			Ingredient("waxpaper", 1),
			Ingredient("rope", 1),
		},
		tech = GLOBAL.TECH.NONE,
		config = {
			nounlock = true,
		},
		filters = { "CONTAINERS" },
	})
end

if GetModConfigData("bundle_nesting") then
	AddPrefabPostInit("bundle", function(inst)
		inst:RemoveTag("bundle")
	end)
end

for _, v in pairs(recipes) do
	AddRecipe2(v.name, v.ingredients, v.tech, v.config, v.filters)
end


if GetModConfigData("lang") == "zh-hans" then
	require "languages/zh-hans"
else
	require "languages/en"
end
