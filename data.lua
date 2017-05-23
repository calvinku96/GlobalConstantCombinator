-- data.lua

data:extend{
    {
        type="custom-input",
        name="paste-from-constant-combinator",
        key_sequence="CONTROL + SHIFT + mouse-button-1",
        consuming="script-only"
    }
}
require("prototypes.item")
require("prototypes.entity")
require("prototypes.recipe")
