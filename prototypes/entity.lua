-- prototypes/entity.lua

local constant_combinator = data.raw["constant-combinator"]
local entity = table.deepcopy(constant_combinator["constant-combinator"])
entity.name = "global-constant-combinator"
entity.minable.result = "global-constant-combinator"
entity.item_slot_count = 18
local tint = {r=100/255, g=200/255, b=1, a=1}

local sides = {"north", "east", "south", "west"}
for k,v in pairs(sides) do
    entity.sprites[v].layers[1].tint = tint
    entity.sprites[v].layers[1].hr_version.tint = tint
end

data:extend{entity}
