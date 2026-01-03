warn("Library carregada")

local TDS = {}
TDS.__index = TDS

function TDS.new()
    warn("Instância criada")
    return setmetatable({}, TDS)
end

function TDS:Test()
    warn("Test OK")
end

return function()
    return TDS.new()
end
