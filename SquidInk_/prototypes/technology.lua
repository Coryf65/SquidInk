-- Squid-Tech for recipe unlocks
squidTech = util.table.deepcopy(data.raw["technology"]["advanced-material-processing-2"])
squidTech.name = "squid-tech"
squidTech.icon = "__SquidInk__/graphics/squid-tech.png"
squidTech.effects = {
    { type = "unlock-recipe", recipe = "squid-plate"},
    { type = "unlock-recipe", recipe = "squid-furnace"},
    { type = "unlock-recipe", recipe = "squid-centrifuge"} 
}
squidTech.prerequisites = {"advanced-material-processing-2", "effectivity-module", "production-science-pack"}
squidTech.unit =
{
  count = 300,
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1}
  },
  time = 30
}


-- Squid-Tech2 for recipe unlocks
-- This will be for advanced machines, assembling machines and fish pump
squidTech2 = util.table.deepcopy(data.raw["technology"]["advanced-material-processing-2"])
squidTech2.name = "squid-tech2"
squidTech2.icon = "__SquidInk__/graphics/squid-tech2.png"
squidTech2.effects = {
  { type = "unlock-recipe", recipe = "fish-pump"},
  { type = "unlock-recipe", recipe = "fish-processing"},
  { type = "unlock-recipe", recipe = "reinforced-squid-plate"}
}
squidTech2.prerequisites = {"squid-tech"}
squidTech2.unit =
{
  count = 500,
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1}
  },
  time = 30
}

-- Add into game
data:extend({
  squidTech,
  squidTech2
})