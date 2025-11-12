modifiers = {
    {name = "A01", weight = 105, boosts = {kronoGainBoost = 1.02}},
    {name = "A02", weight = 30, boosts = {kronoGainBoost = 1.04}},
    {name = "A03", weight = 12, boosts = {kronoGainBoost = 1.06}},
    {name = "A04", weight = 3, boosts = {kronoGainBoost = 1.12}},

    {name = "B01", weight = 105, boosts = {kronoCooldownReduction = 0.01}},
    {name = "B02", weight = 30, boosts = {kronoCooldownReduction = 0.02}},
    {name = "B03", weight = 12, boosts = {kronoCooldownReduction = 0.03}},
    {name = "B04", weight = 3, boosts = {kronoCooldownReduction = 0.05}},

    {name = "C01", weight = 105, boosts = {assemblyCostReduction = 0.01}},
    {name = "C02", weight = 30, boosts = {assemblyCostReduction = 0.02}},
    {name = "C03", weight = 12, boosts = {assemblyCostReduction = 0.04}},
    {name = "C04", weight = 3, boosts = {assemblyCostReduction = 0.06}},

    {name = "D01", weight = 105, boosts = {assemblyCooldownReduction = 0.01}},
    {name = "D02", weight = 30, boosts = {assemblyCooldownReduction = 0.02}},
    {name = "D03", weight = 12, boosts = {assemblyCooldownReduction = 0.03}},
    {name = "D04", weight = 3, boosts = {assemblyCooldownReduction = 0.04}},

    {name = "E01", weight = 57, boosts = {kronoGainBoost = 1.016, assemblyCostReduction = 0.006}},
    {name = "E02", weight = 16, boosts = {kronoGainBoost = 1.035, assemblyCostReduction = 0.011}},
    {name = "E03", weight = 6, boosts = {kronoGainBoost = 1.048, assemblyCostReduction = 0.015}},
    {name = "E04", weight = 1, boosts = {kronoGainBoost = 1.09, assemblyCostReduction = 0.024}},

    {name = "F01", weight = 57, boosts = {kronoCooldownReduction = 0.008, assemblyCooldownReduction = 0.005}},
    {name = "F02", weight = 16, boosts = {kronoCooldownReduction = 0.015, assemblyCooldownReduction = 0.009}},
    {name = "F03", weight = 6, boosts = {kronoCooldownReduction = 0.024, assemblyCooldownReduction = 0.012}},
    {name = "F04", weight = 1, boosts = {kronoCooldownReduction = 0.036, assemblyCooldownReduction = 0.017}},

    {name = "G01", weight = 57, boosts = {assemblyCostReduction = 0.008, kronoCooldownReduction = 0.008}},
    {name = "G02", weight = 16, boosts = {assemblyCostReduction = 0.015, kronoCooldownReduction = 0.012}},
    {name = "G03", weight = 6, boosts = {assemblyCostReduction = 0.025, kronoCooldownReduction = 0.016}},
    {name = "G04", weight = 1, boosts = {assemblyCostReduction = 0.04, kronoCooldownReduction = 0.02}},

    {name = "H01", weight = 57, boosts = {assemblyCooldownReduction = 0.009, kronoGainBoost = 1.016}},
    {name = "H02", weight = 16, boosts = {assemblyCooldownReduction = 0.018, kronoGainBoost = 1.032}},
    {name = "H03", weight = 6, boosts = {assemblyCooldownReduction = 0.027, kronoGainBoost = 1.05}},
    {name = "H04", weight = 1, boosts = {assemblyCooldownReduction = 0.036, kronoGainBoost = 1.08}},
}

modifierImages = {
    A01 = modifier_A,
    A02 = modifier_A,
    A03 = modifier_A,
    A04 = modifier_A,
    B01 = modifier_B,
    B02 = modifier_B,
    B03 = modifier_B,
    B04 = modifier_B,
    C01 = modifier_C,
    C02 = modifier_C,
    C03 = modifier_C,
    C04 = modifier_C,
    D01 = modifier_D,
    D02 = modifier_D,
    D03 = modifier_D,
    D04 = modifier_D,
    E01 = modifier_E,
    E02 = modifier_E,
    E03 = modifier_E,
    E04 = modifier_E,
    G01 = modifier_G,
    G02 = modifier_G,
    G03 = modifier_G,
    G04 = modifier_G,
    H01 = modifier_H,
    H02 = modifier_H,
    H03 = modifier_H,
    H04 = modifier_H,
}

dropTable = {}
function dropTable.draw(tbl)
    local totalItemWeight = 0
    for _,v in pairs(tbl) do
        totalItemWeight = totalItemWeight + v.weight
    end
    local weightLeftToDraw = love.math.random(0, totalItemWeight)
    for _,v in pairs(tbl) do
        weightLeftToDraw = weightLeftToDraw - v.weight
        if weightLeftToDraw <= 0 then
            return v
        end
    end
end