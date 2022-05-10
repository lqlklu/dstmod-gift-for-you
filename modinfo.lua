name = "给你的礼物"
version = "0.0.1"
description = "给你的礼物" .. version
author = "柳零露"

forumthread = ""
api_version = 10

dst_compatible = true
all_clients_require_mod = true
clients_only_mod = false

icon_atlas = "modicon.xml"
icon = "modicon.tex"

local function section(name)
	return {
		name = "",
		label = name,
		hover = "",
		options = {
			{
				description = "",
				hover = "",
				data = 0,
			},
		},
		default = 0,
	}
end

configuration_options = {
	{
		name = "lang",
		label = "语言",
		description = "语言",
		options = {
			{
				description = "简体中文",
				hover = "简体中文",
				data = "zh-hans",
			},
			{
				description = "English",
				hover = "English",
				data = "en",
			}
		},
		default = "zh-hans",
	},
	section("礼物包装"),
	{
		name = "giftwrap_craft_difficulty",
		label = "制作难度",
		hover = "礼物包装的制作难度",
		options = {
			{
				description = "非常非常简单",
				hover = "非常非常简单",
				data = 1,
			},
			{
				description = "非常简单",
				hover = "非常简单",
				data = 2,
			},
			{
				description = "简单",
				hover = "简单",
				data = 3,
			},
			{
				description = "默认",
				hover = "默认",
				data = 4,
			},
		},
		default = 4,
	},
	{
		name = "giftwrap_sanity",
		label = "脑残值制作",
		hover = "允许礼物包装消耗脑残值制作",
		options = {
			{
				description = "是",
				hover = "是",
				data = true,
			},
			{
				description = "否",
				hover = "否",
				data = false,
			},
		},
		default = false,
	},
	{
		name = "giftwrap_sanity_cost",
		label = "脑残值制作消耗",
		hover = "礼物包装脑残值制作消耗",
		options = {
			{
				description = "5",
				hover = "5",
				data = 5,
			},
			{
				description = "10",
				hover = "10",
				data = 10,
			},
			{
				description = "20",
				hover = "20",
				data = 20,
			},
			{
				description = "30",
				hover = "30",
				data = 30,
			},
		},
		default = 20,
	},
	{
		name = "gift_nesting",
		label = "允许套娃",
		hover = "礼物包装允许套娃",
		options = {
			{
				description = "是",
				hover = "是",
				data = true,
			},
			{
				description = "否",
				hover = "否",
				data = false,
			},
		},
		default = false,
	},
	section("捆绑包装"),
	{
		name = "bundle_enable",
		label = "开启制作",
		hover = "捆绑包装开启制作",
		options = {
			{
				description = "开启",
				hover = "开启",
				data = true,
			},
			{
				description = "关闭",
				hover = "关闭",
				data = false,
			},
		},
		default = false,
	},
	{
		name = "bundle_nesting",
		label = "允许套娃",
		hover = "捆绑包装允许套娃",
		options = {
			{
				description = "是",
				hover = "是",
				data = true,
			},
			{
				description = "否",
				hover = "否",
				data = false,
			},
		},
		default = false,
	},
}
