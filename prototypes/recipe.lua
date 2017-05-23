-- prototypes/recipe.lua

local recipe = table.deepcopy(data.raw.recipe["constant-combinator"])
recipe.name = "global-constant-combinator"
recipe.result = "global-constant-combinator"
recipe.enabled = false
data:extend{recipe}
table.insert(
    data.raw.technology["circuit-network"].effects,
    {type="unlock-recipe", recipe="global-constant-combinator"}
)
