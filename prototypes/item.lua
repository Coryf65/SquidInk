--item.lua

local fireArmor = table.deepcopy(data.raw["furnace"]["heavy-armor"])

fireArmor.name = "fire-armor"
fireArmor.icons= {
  {
    icon=fireArmor.icon,
    tint={r=1,g=0,b=0,a=0.3}
  },
}

fireArmor.resistances = {
  {
    type = "physical",
    decrease = 6,
    percent = 10
  },
  {
    type = "explosion",
    decrease = 10,
    percent = 30
  },
  {
    type = "acid",
    decrease = 5,
    percent = 30
  },
  {
    type = "fire",
    decrease = 0,
    percent = 100
  }
}

local recipe = table.deepcopy(data.raw["recipe"]["heavy-armor"])
recipe.enabled = true
recipe.name = "fire-armor"
recipe.ingredients = {{"copper-plate",200},{"steel-plate",50}}
recipe.result = "fire-armor"

data:extend{fireArmor,recipe}


local squidPlates = table.deepcopy(data.raw["furnace"]["heavy-armor"])

squidPlates.name = "squid-plates"


squidPlates.icons= {
  {
    icon=squidPlates.icon,
    tint={r=1,g=0,b=0,a=0.3}
  },
}

squidPlates.

data:extend(
{
  ---------------------------------------------------------------------
                           --Squid Furnace
  ---------------------------------------------------------------------
  {
    type = "item",
    name = "squid-furnace",
    icon = "__SquidInk__/graphics/icons/squid-furnace.png",
    flags = {"goes-to-quickbar"},
    subgroup = "squid-machines",
    order = "a[squid-furnace]",
    place_result = "squid-furnace",
    stack_size = 50
  },

  ---------------------------------------------------------------------
                           --Squid Plate
  ---------------------------------------------------------------------

  {
    type = "item",
    name = "squid-plate",
    icon = "__SquidInk__/graphics/icons/squid-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "squid-machines",
    order = "b[squid-plate]",
    stack_size = 100
  },
})