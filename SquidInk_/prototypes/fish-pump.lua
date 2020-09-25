-- Pump water and outputs Fish and Oil ?
-- add new recipe for water in, fish out ? fish squeezer ? = squid-juice

fishPump = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine2"])
fishPump.name = "fish-pump"
fishPump.icon = "__SquidInk__/graphics/icons/fish-pump-icon.png"
fishPump.minable.result = "fish-pump"
fishPump.fast_replaceable_group = "assembling-machine"
fishPump.module_specification.module_slots = 3
fishPump.energy_usage = "90kW"
fishPump.crafting_speed = 5
fishPump.group = "squid-ink"
fishPump.subgroup = "squid-machines"
fishPump.fixed_recipe = "ink-squeezing"

-- Add into game
data:extend({

    fishPump,
  
    {
      type = "item",
      name = "fish-pump",
      icon = "__SquidInk__/graphics/icons/fish-pump-icon.png",
      icon_size = 64, icon_mipmaps = 4,
      group = "squid-machines",
      subgroup = "squid-machines",
      order = "c",
      place_result = "fish-pump",
      stack_size = 50
    },
  
    {
      type = "recipe",
      name = "fish-pump",
      ingredients = {
        {"squid-plate", 10},
        {"assembling-machine-2", 2}
      },
      result = "fish-pump",
      energy_required = 1,
      enabled = false
    },
  
  })