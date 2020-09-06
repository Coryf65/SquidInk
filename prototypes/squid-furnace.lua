local sqiudFurnace = table.deepcopy(data.raw["furnace"]["electric-furnace"])

data:extend{

    {
        type = "item",
        name = "squid-furnace",
        icon = "__base__/graphics/icons/electric-furnace.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "smelting-machine",
        order = "z[squid-furnace]",
        place_result = "squid-furnace",
        stack_size = 50
    }

}