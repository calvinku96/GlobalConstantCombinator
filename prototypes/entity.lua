-- prototypes/entity.lua

local constant_combinator = data.raw["constant-combinator"]
local entity = table.deepcopy(constant_combinator["constant-combinator"])
entity.name = "global-constant-combinator"
entity.minable.result = "global-constant-combinator"
entity.item_slot_count = 18 
entity.operable = false
data:extend{entity}
