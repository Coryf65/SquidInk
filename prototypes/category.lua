-- adding a new category grouping

data:extend({
   {
    type = "item-group",
    name = "Squid Ink",
    order = "aaa-a",
    inventory_order = "c-a",
    icon = "__SquidInk__/graphics/thumbnail.png",
	icon_size = 32,
  },
  {
    type = "item-subgroup",
    name = "Squid Ink",
    group = "Squid Ink",
    order = "c-c",
  },
})


-- adding a subgroup
-- data:extend({
--    {
--     type = "item-group",
--     name = "fast-chemical",
--     order = "aaa-a",
--     inventory_order = "c-a",
--     icon = "__SquidInk__/graphics/icons/thumbnail.png",
-- 	icon_size = 32,
--   },
-- })