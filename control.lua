-- control.lua

local function sync_all()
    local params = global["global-constant-combinator-params"]
    if params ~= nil then
        for k1, surface in pairs(game.surfaces) do
            for k2, entity in pairs(surface.find_entities_filtered{name="global-constant-combinator"}) do
                entity.get_control_behavior().parameters = params
            end
        end
    end
end

script.on_init(
    function ()
        global["global-constant-combinator-params"] = nil
    end
)

script.on_event(
    {defines.events.on_built_entity, defines.events.on_robot_built_entity},
    function (event)
        local entity = event.created_entity
        if entity.name == "global-constant-combinator" then
            entity.operable = false
            local control_behavior = entity.get_control_behavior()
            local params = global["global-constant-combinator-params"]
            if params ~= nil then
                control_behavior.parameters = params
            end
        end
    end
)

script.on_event(
    "paste-from-constant-combinator",
    function (event)
        local entity = game.players[event.player_index].entity_copy_source
        if entity ~= nil and entity.name == "constant-combinator" then
            global["global-constant-combinator-params"] = entity.get_control_behavior().parameters
            sync_all()
        end
    end
)
