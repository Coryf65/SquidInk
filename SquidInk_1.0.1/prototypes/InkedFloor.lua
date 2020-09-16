data:extend({

{
    type = "tile",
    name = "InkedFloor",
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "InkedFloor"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 0.15,
    layer = 61,
    decorative_removal_probability = 0.9,
    variants =
    {
        main =
        {
            {
                picture = "__SquidInk__/graphics/terrain/biome-floor/InkedFloor-floor1.png",
                count = 16,
                size = 1
            },
            {
                picture = "__SquidInk__/graphics/terrain/biome-floor/InkedFloor-floor2.png",
                count = 4,
                size = 2
                
            },
            {
                picture = "__SquidInk__/graphics/terrain/biome-floor/InkedFloor-floor4.png",
                count = 4,
                size = 4,	
            },  
        },

        inner_corner =
        {
            picture = "__SquidInk__/graphics/terrain/biome-floor/InkedFloor-inner-corner.png",
            count = 6
        },
        outer_corner =
        {
            picture = "__SquidInk__/graphics/terrain/biome-floor/InkedFloor-outer-corner.png",
            count = 6
        },
        side =
        {
            picture = "__SquidInk__/graphics/terrain/biome-floor/InkedFloor-side.png",
            count = 8
        }        
    },
    
    walking_sound =
    {
        {
        filename = "__base__/sound/walking/grass-01.ogg",
        volume = 1.2
        },
        {
        filename = "__base__/sound/walking/grass-02.ogg",
        volume = 1.2
        },
        {
        filename = "__base__/sound/walking/grass-03.ogg",
        volume = 1.2
        },
        {
        filename = "__base__/sound/walking/grass-04.ogg",
        volume = 1.2
        }
    },
    map_color={r=25, g=25, b=25},
    ageing=0,
    vehicle_friction_modifier = sand_vehicle_speed_modifier

},

{
	type = "item",
    name = "InkedFloor",
    icon = "__SquidInk__/graphics/icons/InkedFloor.png",
    flags = {"goes-to-main-inventory"},
    group = "squid-ink",
    subgroup = "squid-items",
    order = "c[InkedFloor]",
    stack_size = 1000,
    place_as_tile =
    {
      result = "InkedFloor",
      condition_size = 4,
      condition = { "water-tile" }	
	} 
},

{    
	type = "recipe",
    name = "InkedFloor",
    energy_required = 50,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients =
    {
      {"raw-fish", 1},
	  {type="fluid", name="crude-oil", amount=500}
    },
    result= "InkedFloor",
    result_count = 10
   },

   {
	type = "technology",
    name = "InkedFloors",
    icon = "__SquidInk__/graphics/icons/InkedFloors-Tech.png",
    icon_size = 128,
	prerequisites = {"concrete", "squid-tech"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "InkedFloor"
        },
    }


})