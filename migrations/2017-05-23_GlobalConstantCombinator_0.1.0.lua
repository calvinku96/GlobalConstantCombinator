for index, force in pairs(game.forces) do
    if force.technologies["circuit-network"].researched == true then
        force.recipes["global-constant-combinator"].enabled = true
        force.recipes["global-constant-combinator"].reload()
    end
end
