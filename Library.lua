print("Library carregada")

local TDS = {}
TDS.__index = TDS

function TDS.new()
    print("Instância criada")
    return setmetatable({}, TDS)
end

function TDS:Test()
    print("Test OK")
end

return function()
    return TDS.new()
end
