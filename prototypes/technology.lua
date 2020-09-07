-- Squid-Tech for recipe unlocks
squidTech = util.table.deepcopy(data.raw["technology"]["advanced-material-processing-2"])
squidTech.name = "squid-tech"
squidTech.effects = {
    { type = "unlock-recipe", recipe = "squid-plate"},
    { type = "unlock-recipe", recipe = "squid-furnace"} 
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
squidTech.order = "c-c-b-a"

-- Add into game
data:extend({
    squidTech
})