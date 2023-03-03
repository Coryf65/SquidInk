--local hit_effects = require ("__base__.sound.prototypes.entity.demo-hit-effects")
---local sounds = require("__base__.sound.prototypes.entity.demo-sounds")

data:extend({
  {
    type = "assembling-machine",
    name = "squid-centrifuge",
    icon = "__SquidInk__/graphics/icons/squid-centrifuge.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "squid-centrifuge"},
    max_health = 550,
    corpse = "centrifuge-remnants",
    dying_explosion = "centrifuge-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    -- TODO: need to add back in
    --damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1.5, -2.2}, {1.5, 1.5}},
    always_draw_idle_animation = true,
    idle_animation =
  {
    layers =
    {
      -- Centrifuge C
      {
        filename = "__SquidInk__/graphics/centrifuge/squid-centrifuge-C.png",
        priority = "high",
        line_length = 8,
        width = 119,
        height = 107,
        frame_count = 64,
        shift = util.by_pixel(-0.5, -26.5),
        hr_version =
        {
          filename = "__SquidInk__/graphics/centrifuge/squid-centrifuge-C.png",
          priority = "high",
          scale = 0.5,
          line_length = 8,
          width = 237,
          height = 214,
          frame_count = 64,
          shift = util.by_pixel(-0.25, -26.5)
        }
      },
      {
        filename = "__base__/graphics/entity/centrifuge/centrifuge-C-shadow.png",
        draw_as_shadow = true,
        priority = "high",
        line_length = 8,
        width = 132,
        height = 74,
        frame_count = 64,
        shift = util.by_pixel(20, -10),
        hr_version =
        {
          filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          scale = 0.5,
          line_length = 8,
          width = 279,
          height = 152,
          frame_count = 64,
          shift = util.by_pixel(16.75, -10)
        }
      },
      -- Centrifuge B
      {
        filename = "__SquidInk__/graphics/centrifuge/squid-centrifuge-B.png",
        priority = "high",
        line_length = 8,
        width = 78,
        height = 117,
        frame_count = 64,
        shift = util.by_pixel(23, 6.5),
        hr_version =
        {
          filename = "__SquidInk__/graphics/centrifuge/squid-centrifuge-B.png",
          priority = "high",
          scale = 0.5,
          line_length = 8,
          width = 156,
          height = 234,
          frame_count = 64,
          shift = util.by_pixel(23, 6.5)
        }
      },
      {
        filename = "__base__/graphics/entity/centrifuge/centrifuge-B-shadow.png",
        draw_as_shadow = true,
        priority = "high",
        line_length = 8,
        width = 124,
        height = 74,
        frame_count = 64,
        shift = util.by_pixel(63, 16),
        hr_version =
        {
          filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          scale = 0.5,
          line_length = 8,
          width = 251,
          height = 149,
          frame_count = 64,
          shift = util.by_pixel(63.25, 15.25)
        }
      },
      -- Centrifuge A
      {
        filename = "__SquidInk__/graphics/centrifuge/squid-centrifuge-A.png",
        priority = "high",
        line_length = 8,
        width = 70,
        height = 123,
        frame_count = 64,
        shift = util.by_pixel(-26, 3.5),
        hr_version =
        {
          filename = "__SquidInk__/graphics/centrifuge/squid-centrifuge-A.png",
          priority = "high",
          scale = 0.5,
          line_length = 8,
          width = 139,
          height = 246,
          frame_count = 64,
          shift = util.by_pixel(-26.25, 3.5)
        }
      },
      {
        filename = "__base__/graphics/entity/centrifuge/centrifuge-A-shadow.png",
        priority = "high",
        draw_as_shadow = true,
        line_length = 8,
        width = 108,
        height = 54,
        frame_count = 64,
        shift = util.by_pixel(6, 27),
        hr_version =
        {
          filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A-shadow.png",
          priority = "high",
          draw_as_shadow = true,
          scale = 0.5,
          line_length = 8,
          width = 230,
          height = 124,
          frame_count = 64,
          shift = util.by_pixel(8.5, 23.5)
        }
      }
    }
  },

  animation =
  {
    layers =
    {
      -- 3 different models that make up the centrifuge
      -- Centrifuge C
      {
          filename = "__SquidInk__/graphics/centrifuge/squid-centrifuge-C.png",
          priority = "high",
          line_length = 8,
          width = 119,
          height = 107,
          frame_count = 64,
          shift = util.by_pixel(-0.5, -26.5),
          hr_version =
          {
            filename = "__SquidInk__/graphics/centrifuge/squid-centrifuge-C.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 237,
            height = 214,
            frame_count = 64,
            shift = util.by_pixel(-0.25, -26.5)
          }
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-C-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          line_length = 8,
          width = 132,
          height = 74,
          frame_count = 64,
          shift = util.by_pixel(20, -10),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C-shadow.png",
            draw_as_shadow = true,
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 279,
            height = 152,
            frame_count = 64,
            shift = util.by_pixel(16.75, -10)
          }
        },
        -- Centrifuge B
        {
          filename = "__SquidInk__/graphics/centrifuge/squid-centrifuge-B.png",
          priority = "high",
          line_length = 8,
          width = 78,
          height = 117,
          frame_count = 64,
          shift = util.by_pixel(23, 6.5),
          hr_version =
          {
            filename = "__SquidInk__/graphics/centrifuge/squid-centrifuge-B.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 156,
            height = 234,
            frame_count = 64,
            shift = util.by_pixel(23, 6.5)
          }
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-B-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          line_length = 8,
          width = 124,
          height = 74,
          frame_count = 64,
          shift = util.by_pixel(63, 16),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B-shadow.png",
            draw_as_shadow = true,
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 251,
            height = 149,
            frame_count = 64,
            shift = util.by_pixel(63.25, 15.25)
          }
        },
        -- Centrifuge A
        {
          filename = "__SquidInk__/graphics/centrifuge/squid-centrifuge-A.png",
          priority = "high",
          line_length = 8,
          width = 70,
          height = 123,
          frame_count = 64,
          shift = util.by_pixel(-26, 3.5),
          hr_version =
          {
            filename = "__SquidInk__/graphics/centrifuge/squid-centrifuge-A.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 139,
            height = 246,
            frame_count = 64,
            shift = util.by_pixel(-26.25, 3.5)
          }
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-A-shadow.png",
          priority = "high",
          draw_as_shadow = true,
          line_length = 8,
          width = 108,
          height = 54,
          frame_count = 64,
          shift = util.by_pixel(6, 27),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A-shadow.png",
            priority = "high",
            draw_as_shadow = true,
            scale = 0.5,
            line_length = 8,
            width = 230,
            height = 124,
            frame_count = 64,
            shift = util.by_pixel(8.5, 23.5)
          }
        }
    }
  },
  working_visualisations =
  {
      {
          effect = "uranium-glow", -- changes alpha based on energy source light intensity
          light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 0.5, g = 0.0, b = 1.0}}
      }
  },
  -- taken out need to include later
  -- open_sound = sounds.machine_open,
  -- close_sound = sounds.machine_close,
  -- vehicle_impact_sound = sounds.generic_impact,
  working_sound =
  {
    sound =
    {
      {
        filename = "__base__/sound/centrifuge-1.ogg",
        volume = 0.3
      },
      {
        filename = "__base__/sound/centrifuge-2.ogg",
        volume = 0.3
      },
      {
        filename = "__base__/sound/centrifuge-6.ogg",
        volume = 0.3
      },
    },
    fade_in_ticks = 4,
    fade_out_ticks = 20,
    --max_sounds_per_type = 3,
    --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
  },
    crafting_speed = 8,
    crafting_categories = {"centrifuging"},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 4
    },
    energy_usage = "600kW",
    module_specification =
    {
      module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/centrifuge/centrifuge-reflection.png",
        priority = "extra-high",
        width = 28,
        height = 32,
        shift = util.by_pixel(0, 65),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false
    }
  },
})

-- Add into game
data:extend({
  {
    type = "item",
    name = "squid-centrifuge",
    icon = "__SquidInk__/graphics/icons/squid-centrifuge.png",
    icon_size = 64, icon_mipmaps = 4,
    group = "squid-ink",
    subgroup = "squid-machines",
    order = "b[squid-centrifuge]",
    place_result = "squid-centrifuge",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "squid-centrifuge",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {"concrete", 100},
      {"squid-plate", 25},
      {"advanced-circuit", 100},
      {"raw-fish", 2}
    },
    result = "squid-centrifuge",
    requester_paste_multiplier= 10
  },
})