-- auto-strat | Library.lua

local TDS = {}
TDS.__index = TDS

function TDS.new()
    local self = setmetatable({}, TDS)

    self.AutoSkip = _G.AutoSkip or false

    task.spawn(function()
        while task.wait(1) do
            if self.AutoSkip then
                pcall(function()
                    game:GetService("ReplicatedStorage")
                        .Remotes
                        .VoteSkip
                        :FireServer()
                end)
            end
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
