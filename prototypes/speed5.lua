local container = {}

-- [Item] --
local item = table.deepcopy(data.raw["module"]["speed-module-3"])
item.effect =
	{
		speed = settings.startup["t5-modules-speed-item-effect-speed"].value,
		consumption = settings.startup["t5-modules-speed-item-effect-consumption"].value,
		quality = settings.startup["t5-modules-speed-item-effect-quality"].value
	}

item.icon = "__modules-t4-t5__/graphics/icons/speed-module-5.png"
item.name = "speed-module-5"
item.order = "a[speed]-d[speed-module-5]"
item.tier = 5
table.insert(container, item)
data:extend(container)

-- [Recipe] --
data:extend({
    {
        enabled = false,
        energy_required = 60,
        ingredients = {
            {type = "item", name = "speed-module-4", amount = 5}, 
            {type = "item", name = "processing-unit", amount = 20}
        },
        name = "speed-module-5",
        results = {
            {type = "item", name = "speed-module-5", amount = 1}
        },
        type = "recipe"
    }
})

-- [Technology] --
data:extend({
    {
        effects = {{type = "unlock-recipe", recipe = "speed-module-5"}},
        icon = "__modules-t4-t5__/graphics/technology/speed-module-5.png",
        icon_size = 256,
        name = "speed-module-5",
        order = "i-c-d",
        prerequisites = {"speed-module-4"},
        type = "technology",
        unit = {
            count = 750,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60
        },
        upgrade = true
    }
})