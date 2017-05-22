-- prototypes/item.lua

local item = table.deepcopy(data.raw.item["constant-combinator"])
item.name = "global-constant-combinator"
item.place_result = "global-constant-combinator"
data:extend{item}
