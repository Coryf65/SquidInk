-- Squid Plates

local sqiudPlates = table.deepcopy(data.raw["item"]["iron-plate"])

sqiudPlates.name = "squid-plate"
sqiudPlates.icons= {
  {
    icon=sqiudPlates.icon,
    tint={r=0.5,g=0,b=1,a=0}
  },
}
squidPlates.subgroup = "squid-ink"


local recipe = table.deepcopy(data.raw["recipe"]["iron-plate"])
recipe.enabled = true
recipe.name = "squid-plate"
recipe.ingredients = {{"raw-fish",5},{"copper-plate",200},{"steel-plate",50}}
recipe.result = "squid-plate"

data:extend{squidPlates,recipe}