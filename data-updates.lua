if mods["Geothermal"] then
    local colors = {"", "-blue", "-green", "-purple"}
    for _, color in pairs(colors) do
        data.raw["recipe"]["geothermal-exchange-flipped"..color].hidden = true
        data.raw["recipe"]["geothermal-exchange-2-flipped"..color].hidden = true

        ---@type table
        effects = data.raw.technology["geothermal"].effects
        for i = #effects, 1, -1 do
            if effects[i]["type"] == "unlock-recipe" and string.find(effects[i]["recipe"], "flipped") then
                table.remove(effects, i)
            end
        end

        ---@type table
        effects = data.raw.technology["geothermal-2"].effects
        for i = #effects, 1, -1 do
            if effects[i]["type"] == "unlock-recipe" and string.find(effects[i]["recipe"], "flipped") then
                table.remove(effects, i)
            end
        end
    end
end
