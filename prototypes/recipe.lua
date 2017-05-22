-- prototypes/recipe.lua

local recipe = table.deepcopy(data.raw.recipe["constant-combinator"])
recipe.name = "global-constant-combinator"
recipe.result = "global-constant-combinator"
recipe.ingredients = {}
recipe.enabled = true
data:extend{recipe}
