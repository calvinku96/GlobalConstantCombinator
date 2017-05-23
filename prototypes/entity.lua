-- prototypes/entity.lua

local constant_combinator = data.raw["constant-combinator"]
local entity = table.deepcopy(constant_combinator["constant-combinator"])
entity.name = "global-constant-combinator"
entity.minable.result = "global-constant-combinator"
entity.item_slot_count = 18
local tint = {r=0, g=150./255, b=1, a=1}
entity.sprites.north.tint = tint
entity.sprites.east.tint = tint
entity.sprites.south.tint = tint
entity.sprites.west.tint = tint
data:extend{entity}
