local Library = {}
Library.__index = Library

function Library.new()
    local self = setmetatable({}, Library)
    return self
end

function Library:AutoSkip()
    local Remotes = game:GetService("ReplicatedStorage"):WaitForChild("Remotes")

    task.spawn(function()
        while task.wait(1) do
            pcall(function()
                Remotes.VoteSkip:FireServer()
            end)
        end
    end)
end

return function()
    return Library.new()
end
