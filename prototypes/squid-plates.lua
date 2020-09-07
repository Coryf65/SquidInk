-- Squid Plates

data:extend({

  {
    type = "item",
    name = "squid-plate",
    icon = "__SquidInk__/graphics/icons/squid-plate.png",
    group = "squid-ink",
    subgroup = "squid-items",
    icon_size = 64, icon_mipmaps = 4,
    order = "a",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "squid-plate",
    category = "chemistry",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {type="item", name="steel-plate", amount=10},
      {type="fluid", name="light-oil", amount=5}
      --,{type="fluid", name="ADD OIL ID IN HERE", amount=20}
    },
    results=
    {
      {type="item", name="squid-plate", amount=10}
    },
    group = "squid-ink",
    --subgroup = "fluid-recipes"
  },

})