-- Squid Furnace

squidFurnace = util.table.deepcopy(data.raw["furnace"]["electric-furnace"])
squidFurnace.name = "squid-furnace"
squidFurnace.icon = "__SquidInk__/graphics/icons/squid-furnace.png"
squidFurnace.minable.result = "squid-furnace"
squidFurnace.fast_replaceable_group = "furnace"
squidFurnace.module_specification.module_slots = 6
squidFurnace.energy_usage = "190kW"
squidFurnace.crafting_speed = 5
squidFurnace.animation.layers =
{
  {
    filename = "__SquidInk__/graphics/entity/squid-furnace/squid-furnace.png",
    priority = "high",
    width = 129,
    height = 100,
    frame_count = 1,
    shift = {0.421875, 0},
    hr_version = {
      filename = "__SquidInk__/graphics/entity/squid-furnace/squid-furnace.png",
      priority = "high",
      width = 239,
      height = 219,
      frame_count = 1,
      shift = util.by_pixel(0.75, 5.75),
      scale = 0.5
    }
  },
  {
    filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
    priority = "high",
    width = 129,
    height = 100,
    frame_count = 1,
    shift = {0.421875, 0},
    draw_as_shadow = true,
    hr_version = {
      filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
      priority = "high",
      width = 227,
      height = 171,
      frame_count = 1,
      draw_as_shadow = true,
      shift = util.by_pixel(11.25, 7.75),
      scale = 0.5
    }
  }
}


data:extend(
{
  squidFurnace,

  {
    type = "item",
    name = "squid-furnace2",
    icon = "__SquidInk__/graphics/icons/squid-furnace.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "smelting-machine",
    order = "z[electric-furnace]b",
    place_result = "squid-furnace",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "squid-furnace",
    ingredients = {
        {"squid-plate", 40},
        {"steel-plate", 10},
        {"electric-furnace", 1}
    },
    result = "squid-furnace",
    energy_required = 5,
    enabled = false
  }
})