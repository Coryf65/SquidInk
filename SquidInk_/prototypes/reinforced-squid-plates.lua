-- Reinforced Squid Plates
-- Teir 2 Squid Plates for more advanced Recipes

data:extend({

    {
      type = "item",
      name = "reinforced-squid-plate",
      icon = "__SquidInk__/graphics/icons/reinforced-squid-plate.png",
      group = "squid-ink",
      subgroup = "squid-items",
      icon_size = 64, icon_mipmaps = 4,
      order = "a",
      stack_size = 200
    },
  
    {
      type = "recipe",
      name = "reinforced-squid-plate",
      category = "chemistry",
      energy_required = 2.5,
      enabled = false,
      ingredients =
      {
        {type="fluid", name="ink", amount=5},
        {type="item", name="squid-plate", amount=20},
      },
      results=
      {
        {type="item", name="reinforced-squid-plate", amount=10}
      },
      group = "squid-ink",
    },
  
  })