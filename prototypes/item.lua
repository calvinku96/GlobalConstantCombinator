-- prototypes/item.lua

local item = table.deepcopy(data.raw.item["constant-combinator"])
item.name = "global-constant-combinator"
item.place_result = "global-constant-combinator"
item.icons = {
    {
        icon = item.icon
    },
    {
        icon = item.icon,
        tint = {r=0, g=100/255, b=1, a=0.3}
    },
}
data:extend{item}
