print("Library carregada com sucesso")
-- auto-strat Library
local TDS = {}
TDS.__index = TDS

function TDS.new()
    return setmetatable({}, TDS)
end

function TDS.new()
    print("TDS.new() chamado")
    return setmetatable({}, TDS)
end


return function()
    return TDS.new()
end
