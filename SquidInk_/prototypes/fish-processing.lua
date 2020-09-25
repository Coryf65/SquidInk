-- Fish Processing 
-- Pumps Water in Fish-Pump, and outputs ink and fish

-- New Fuild for advanced craftings, Ink
data:extend({

    {
      type = "fluid",
      name = "ink",
      base_color = {r=32, g=1, b=64, a=0.1}, -- deep purple
      flow_color = {r=32, g=1, b=64, a=0.1},
      fuel_value = "250kw",
      default_temperature = 15,
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59,
      icon = "__SquidInk__/graphics/icons/ink.png",
      group = "squid-ink",
      subgroup = "squid-items",
      icon_size = 64,
      order = "c",
    },
    -- Recipe ink-squeezing used in fish-pump, to get water and output ink / and fish 
    {
      type = "recipe",
      name = "ink-squeezing",
      category = "crafting-with-fluid",
      energy_required = 2,
      enabled = false,
      ingredients =
      {
        {type="fluid", name="water", amount=10}
      },
      results=
      {
        {type="item", name="raw-fish", amount=5},
        {type="fluid", name="ink", amount=20}
      },
      group = "squid-ink",
    },
  
})