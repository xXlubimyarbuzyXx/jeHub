local Players = game:GetService("Players")
local OldNameCall = nil

OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
    local NameCallMethod = getnamecallmethod()
    local src = tostring(string.lower(NameCallMethod))
    
    if src == "kick" then
        game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "JeHub",
                Text = "Byppassed kick",
                Icon = "rbxassetid://6238540373",
                Duration = 3,
            })
        
        return nil
    end
    
    return OldNameCall(Self, ...)
end)
