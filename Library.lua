-- auto-strat | Library.lua

local TDS = {}
TDS.__index = TDS

function TDS.new()
    local self = setmetatable({}, TDS)

    self.AutoSkip = _G.AutoSkip or false

task.spawn(function()
    while task.wait(2) do
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "auto-strat",
            Text = "loop rodando",
            Duration = 1
        })
    end
end)


    return self
end

function TDS:Loadout(...)
    self.LoadoutTowers = {...}
end

return function()
    return TDS.new()
end
