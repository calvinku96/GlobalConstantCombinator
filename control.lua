-- control.lua

local function set_signal(event)
    if event.tick % 6 ~= 0 then return nil end
    for k, surface in pairs(game.surfaces) do
        local global_constant_combinator = surface.find_entities_filtered{
            name="global-constant-combinator"
        }
        for key, val in pairs(global_constant_combinator) do
            local control_behavior = val.get_control_behavior()
            control_behavior.set_signal(
                1, {count=100, signal={type="item", name="iron-plate"}}
            )
            control_behavior.set_signal(
                2, {count=100, signal={type="item", name="copper-plate"}}
            )
            control_behavior.set_signal(3, nil)
        end
    end
end

script.on_event({defines.events.on_tick}, set_signal)
